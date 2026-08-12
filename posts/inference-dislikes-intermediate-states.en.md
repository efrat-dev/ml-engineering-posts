---
language: "en"
title: "Why Inference Doesn't Like Intermediate States"
categories:
  - "Inference Optimization"
tags:
  - "Inference"
  - "Stability"
previousPost: "where-modularity-fails-in-inference-en"
nextPost: "good-inference-does-not-fight-time-en"
slug: "inference-dislikes-intermediate-states-en"
---


# Why Inference Doesn't Like Intermediate States

Many systems aspire to be "elegant" in failure:
not falling completely,
not stopping service,
staying roughly available.

But in Inference, that approach is especially dangerous.

Because a partial state
is worse than a bad state.

## "Half-Available" Components Are a Source of Uncertainty

A half-available component is one that:

- Sometimes responds
- Sometimes slows down
- Sometimes fails
- And it's never clear what its current state is

From the outside it looks "alive."
From the inside - it's unpredictable.

Inference doesn't know how to work with maybe:

- Maybe the request will get through
- Maybe it'll get stuck
- Maybe it'll succeed after an unknown amount of time

The result is:

- Queues that keep growing
- Retries that pile up
- A tail that inflates for no clear reason

## Why a Degraded State Is Dangerous If Not Well Defined

A degraded state can be an important tool -
but only if it's sharp and clear.

When degraded isn't defined:

- Different components interpret it differently
- Some keep sending traffic
- Others try to compensate
- And no one knows when to stop

Instead of a controlled degradation -
you get chaotic behavior.

The system hasn't decided whether it's working or not -
so it does both, at the same time.

## An Analogy

Imagine an elevator that "sometimes runs, sometimes gets stuck."

That's much worse than an elevator that's simply out of service.

Not because of the outcome -
but because of the uncertainty.

Inference feels exactly like that.

## A Bad State Is Preferable - If It's Clear

**A bad state:**

- Slow but consistent
- Limited but predictable
- Reduced but understandable

**A partial state:**

- Changing
- Fluctuating
- Unmanageable

Inference doesn't need to be perfect.
It needs to be clear.

## The Bottom Line

In Inference, there's no room for "approximately."

A stable system doesn't try to hold on at all costs,
and doesn't try to look available when it isn't.

It defines sharp states,
and commits to them.

Because in the end,
a partial state confuses the system -
while a bad but clear state
lets it keep working.
