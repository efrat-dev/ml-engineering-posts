# Replaces en dash (–), em dash (—) and Hebrew maqaf (־) with a regular hyphen (-)
# across all .md files under posts/.

$repoRoot = Split-Path -Parent $PSScriptRoot
$postsDir = Join-Path $repoRoot "posts"

$dashChars = @(
    [char]0x2013, # en dash –
    [char]0x2014, # em dash —
    [char]0x05BE  # Hebrew maqaf ־
)

$files = Get-ChildItem -Recurse -Filter "*.md" -Path $postsDir
$changed = 0

foreach ($f in $files) {
    $text = Get-Content $f.FullName -Raw -Encoding UTF8
    $original = $text
    foreach ($ch in $dashChars) {
        $text = $text.Replace($ch, "-")
    }
    if ($text -ne $original) {
        [System.IO.File]::WriteAllText($f.FullName, $text, (New-Object System.Text.UTF8Encoding($false)))
        $changed++
    }
}

Write-Output "Files changed: $changed"
