---
language: "en"
title: "Synchronous and Asynchronous: Two Different Ways to Make a System Work"
categories:
  - "System Architecture"
tags:
  - "Async"
  - "System Design"
previousPost: "routing-en"
nextPost: "failure-as-information-en"
slug: "sync-vs-async-en"
---


# Synchronous and Asynchronous: Two Different Ways to Make a System Work

## Why "Everything Async" Isn't a Strategy

Asynchrony sounds like a magic solution.
No waiting, no blocking, everything flows in parallel.
Faster, more scalable, more advanced.

But "everything async" isn't a design.
It's an escape from decisions.

Asynchrony solves one clear problem:
not waiting.

But the moment you use it without boundaries, a different problem appears:
you lose control over the flow.

## What Happens in a Fully Asynchronous System

In a fully asynchronous system:

- Requests come in without stopping
- Messages pile up in queues
- Processes run in parallel without knowing about each other

There's no clear point where you can say:
"the system is too loaded right now."

Everything keeps moving -
until suddenly everything is slow, stuck, or falling apart.

## The Difficulty of Predicting Load

The big difficulty is predicting load.

Without synchronization:

- It's hard to know how much work is actually waiting
- It's hard to understand who's waiting for whom
- And it's hard to see where a bottleneck is forming

The load doesn't disappear -
it just moves sideways, into a queue, a buffer, or another component.

And then the load surfaces too late.

## Synchrony as Feedback, Not a Malfunction

Here's something counterintuitive worth saying:
sometimes synchrony improves stability.

Synchrony creates boundaries:

- Someone is waiting - and that's a signal
- Something is blocked - and that's pressure
- The system "feels" the load in real time

Blocking isn't a bug.
It's feedback.

## Combining the Two Correctly

A system that mixes async and sync correctly:

- Uses asynchrony to avoid blocking unnecessarily
- And uses synchrony to maintain control

Not everything needs to run in parallel.
Not everything needs to be deferred to a queue.

## The Analogy

A kitchen where every order is sent in immediately, regardless of preparation pace.
Tickets pile up, pressure rises, and food comes out late.

Compare that to a kitchen that stops taking orders when it's full.
Fewer orders - but order, quality, and control.

## Summary

Asynchrony is an important tool.
But without boundaries, it creates quiet chaos.

A good system doesn't ask
"how do we make everything async?"
but rather
"where does asynchrony help -
and where do we need to stop, wait, and feel the load?"

Because stability doesn't come from running everything in parallel -
it comes from knowing when not to.
