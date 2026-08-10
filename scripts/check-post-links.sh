#!/usr/bin/env bash
# Checks that previousPost/nextPost front-matter links between posts are reciprocal.
#
# This repo mixes two link conventions:
#   - folder series (e.g. ai-hardware-infrastructure, chip-design-journey) reference
#     the target's filename-relative id, e.g. "ai-hardware-infrastructure/2-nvidia-ai.en"
#   - flat posts/*.md reference the target's `slug:` value, e.g. "serving-ai.en"
# A referenced value can resolve either way, so this script tries filename-id first,
# then falls back to matching by `slug:` field across all posts.
#
# Usage: bash scripts/check-post-links.sh [posts-dir]

set -uo pipefail

POSTS_DIR="${1:-posts}"

get_field() {
  local file="$1" field="$2"
  grep -m1 "^${field}:" "$file" | sed -E "s/${field}: *\"?([^\"]*)\"?/\1/"
}

file_id() {
  local file="$1"
  local rel="${file#"$POSTS_DIR"/}"
  echo "${rel%.md}"
}

# resolve a link value to a file path: try as filename-id, then as slug
resolve() {
  local value="$1"
  local candidate="$POSTS_DIR/$value.md"
  if [ -f "$candidate" ]; then
    echo "$candidate"
    return
  fi
  echo "${SLUG_TO_FILE[$value]:-}"
}

declare -A SLUG_TO_FILE
while IFS= read -r -d '' f; do
  slug=$(get_field "$f" slug)
  [ -n "$slug" ] && SLUG_TO_FILE["$slug"]="$f"
done < <(find "$POSTS_DIR" -name '*.md' -print0)

# id a target file "expects" to be referenced by: either its filename-id or its slug
matches_ref() {
  local target_file="$1" value="$2"
  local id
  id=$(file_id "$target_file")
  local slug
  slug=$(get_field "$target_file" slug)
  [ "$value" = "$id" ] || [ "$value" = "$slug" ]
}

echo "== previousPost without reciprocal nextPost =="
while IFS= read -r -d '' f; do
  prev=$(get_field "$f" previousPost)
  [ -z "$prev" ] || [ "$prev" = "null" ] && continue

  prevfile=$(resolve "$prev")
  if [ -z "$prevfile" ]; then
    echo "MISSING FILE: $f references previousPost=$prev but no matching file/slug found"
    continue
  fi

  nxt=$(get_field "$prevfile" nextPost)
  if [ -z "$nxt" ]; then
    echo "MISMATCH: $f has previousPost=$prev, but $prevfile has no nextPost"
    continue
  fi
  if ! matches_ref "$f" "$nxt"; then
    echo "MISMATCH: $f has previousPost=$prev, but $prevfile has nextPost='$nxt' (doesn't resolve back to $f)"
  fi
done < <(find "$POSTS_DIR" -name '*.md' -print0)

echo
echo "== nextPost without reciprocal previousPost =="
while IFS= read -r -d '' f; do
  nxt=$(get_field "$f" nextPost)
  [ -z "$nxt" ] || [ "$nxt" = "null" ] && continue

  nextfile=$(resolve "$nxt")
  if [ -z "$nextfile" ]; then
    echo "MISSING FILE: $f references nextPost=$nxt but no matching file/slug found"
    continue
  fi

  prev=$(get_field "$nextfile" previousPost)
  if [ -z "$prev" ]; then
    echo "MISMATCH: $f has nextPost=$nxt, but $nextfile has no previousPost"
    continue
  fi
  if ! matches_ref "$f" "$prev"; then
    echo "MISMATCH: $f has nextPost=$nxt, but $nextfile has previousPost='$prev' (doesn't resolve back to $f)"
  fi
done < <(find "$POSTS_DIR" -name '*.md' -print0)
