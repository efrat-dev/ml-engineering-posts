---
language: "en"
title: "Hot Path vs Cold Path - Separating Hot Streams from Cold Ones"
categories:
  - "System Architecture"
tags:
  - "Hot Path"
  - "System Design"
nextPost: "thread-pool-en"
slug: "hot-path-vs-cold-path-en"
---


# Hot Path vs Cold Path - Separating Hot Streams from Cold Ones

In many systems, all requests look similar.
They all enter through the same gate, pass through the same components, and compete for the same resources.

But in practice - they're not equal.

Some requests must be answered immediately.
Others can wait.
When you don't distinguish between them, the system pays a heavy price.

## What Are Hot and Cold Paths

A hot path is a critical route:

- Real-time user requests
- Operations that directly affect the user experience
- Every small delay is felt immediately

A cold path is a more tolerant route:

- Heavy background processing
- Asynchronous updates
- Aggregations, logs, analytics

The problem starts when these two paths share the same infrastructure.

## Why Mixing Paths Is Dangerous

When a hot path and a cold path use:

- The same queue
- The same thread pool
- The same connections or the same resources

Load on the cold path immediately leaks into the hot path.

One heavy processing job, with no real time pressure,
can delay a critical request -
not because of importance, but because of a shared queue.

The system doesn't go down -
but it feels slow exactly where it can't afford to.

## An Analogy

Imagine a restaurant:

- Orders for seated tables are the hot path
- Prep work for tomorrow's catering is the cold path

If the same kitchen handles both without distinction,
customers sitting right now will wait -
because of something that has nothing to do with them.

The solution isn't to work faster,
it's to separate.

## Separation as a Design Principle

Separating hot and cold paths can mean:

- Separate queues
- Separate pools
- Separate services
- Or even different infrastructure

The principle isn't technological -
it's conceptual.

Not all work deserves the same treatment.
Not every request needs the same route.

## Why This Matters from the Start

If hot and cold paths aren't identified early:

- They get built together by default
- The dependency between them becomes entrenched
- And separating them later becomes expensive and painful

## The Bottom Line

A stable system isn't one that works fast -
it's one that knows what it must never compromise on.

Separating hot and cold paths
ensures that load that's "not urgent right now"
doesn't harm what must always work.

This isn't an optimization.
It's basic protection for the system.
