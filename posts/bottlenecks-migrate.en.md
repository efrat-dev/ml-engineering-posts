---
language: "en"
title: "Why Bottlenecks Migrate - and Don't Stay in One Place"
categories:
  - "System Architecture"
tags:
  - "Bottleneck"
  - "System Design"
previousPost: "visible-vs-hidden-bottleneck-en"
nextPost: "when-a-knob-is-a-blessing-en"
slug: "bottlenecks-migrate-en"
---


# Why Bottlenecks Migrate - and Don't Stay in One Place

A bottleneck is sometimes seen as a fixed problem:
one slow component, one point that needs "fixing."

But that's a mistaken view.

A bottleneck isn't fixed.
It's the result of context - and mainly, of load.

## What It Means for a Bottleneck to "Migrate"

A complex system is made of several stages working together.
Each stage is fast or slow relative to the others - depending on conditions.

When you change the load,
you change the relationships between the stages.

And when the relationships change -
the limiting component changes along with them.

## Same Code, Different Bottlenecks

This isn't theory. It's typical behavior:

**Under low load**
Computation is barely noticeable.
It's actually the path to the service - the network - that limits things.

**Under moderate load**
The network is no longer the problem.
Now the processor is the one that can't keep pace.

**Under high load**
The processor might be strong enough,
but queues, locks, or synchronization start to choke.

**During warm-up**
It's not processing that limits things -
it's opening connections, initializing structures, filling the cache.

**At peak**
Memory or I/O hit their edge,
even if everything else "looks fine."

Same system.
Different limits.

## Why a Single Point-in-Time Measurement Is Always Misleading

A measurement at one point in time
sees only the current state.

But a bottleneck isn't a property of a component -
it's a property of systemic behavior under specific conditions.

Therefore:

- A measurement under one load doesn't tell you what happens under another
- A measurement after warm-up doesn't tell you what happens at startup
- A measurement of one component doesn't tell you what limits the flow

The bottleneck didn't disappear.
It just moved.

## "The One Bottleneck" - a Dangerous Myth

Searching for "the one bottleneck"
assumes the system is static.

But systems are alive.
They change with time, load, and context.

Whoever fixes one bottleneck
and expects permanent stability -
quickly discovers the next one in line.

## Summary

Bottlenecks aren't one-off problems
that need to be "found and solved."

They're a symptom of a living system
that changes behavior as conditions change.

A stable system doesn't ask
"where is the bottleneck?"
but rather
"how does it move - and how do we see it in real time?"

That's where real systemic understanding begins.
