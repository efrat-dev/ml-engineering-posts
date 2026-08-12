---
language: "en"
title: "Why \"Let's Just Add a Cache\" Is a Red Flag"
categories:
  - "System Architecture"
tags:
  - "Cache"
  - "System Design"
previousPost: "system-that-never-fails-is-dangerous-en"
nextPost: "warm-vs-cold-behavior-en"
slug: "just-add-cache-red-flag-en"
---


# Why "Let's Just Add a Cache" Is a Red Flag

When a system is slow, one of the first suggestions that comes up is:
"let's add a cache."

Sometimes that really helps.
But often - it's a warning sign.

Because a cache is a bandage.
Not a cure.

## What a Cache Doesn't Solve

A cache speeds up access to data that was already here before.
It doesn't solve:

- Slow logic
- Unnecessary dependencies
- Uncontrolled load
- Or a problematic flow in the system

It just hides them - for a while.

## When a Cache Is the Right Tool

There are situations where a cache is the right tool:

- Data that's read a lot and doesn't change often
- An expensive computation whose result is stable
- A clear, well-understood read load

In these cases, a cache saves real work.
It improves performance without changing behavior.

But these aren't the problematic cases.

## When a Cache Is a Red Flag

The red flag appears when a cache is proposed as a general response:

- "It's slow? Let's add a cache"
- "There's load? Let's put a cache in front"
- "Not clear why it's stuck? A cache will help"

Here, the cache no longer solves a problem -
it blurs it.

## Hidden Dependency on Behavior

The big danger is that a cache creates a hidden dependency on behavior.

After adding a cache:

- The system "works" as long as it's warm
- The real behavior only shows up on a cache miss
- And incidents happen precisely at unusual moments

Suddenly:

- A small restart feels like a disaster
- A configuration change breaks performance
- And a momentary load spike triggers unpredictable behavior

Not because the system is bad -
but because it learned to lean on the cache.

## The Hit to Stability

An uncontrolled cache also hurts stability.

Because a cache:

- Adds state
- Adds timing
- And adds the complexity of eviction, consistency, and validity

And when it's unclear:

- Who depends on the cache
- What happens when it empties out
- And how the system behaves without it

Performance might improve,
but the ability to understand and predict behavior - suffers.

## The Analogy: A Painkiller

A painkiller can bring relief -
but it doesn't cure the problem.

If every pain is solved only with a painkiller,
you stop asking why it hurts.

A cache works exactly the same way.

## Summary

A cache is an important tool,
but it has to arrive after understanding, not instead of it.

A mature system doesn't ask
"where should we add a cache?"
but rather
"what's actually slowing us down -
and does a cache address the cause,
or just cover it up?"

Because a bandage can bring relief for a moment.
But only a cure
brings a system back to real health.
