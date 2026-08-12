---
language: "en"
title: "Jitter - Why Network Latency Isn't the Problem, Its Uncertainty Is"
categories:
  - "System Architecture"
tags:
  - "Jitter"
  - "Latency"
  - "Networking"
nextPost: "small-uncertainty-enemy-of-scale-en"
slug: "jitter-vs-latency-en"
---


# Jitter - Why Network Latency Isn't the Problem, Its Uncertainty Is

In most discussions about system performance, Latency is treated as the main enemy.
How long it takes a request to get there and back.
But in practice, complex systems don't break from consistent slowness -
they break from uncertainty.

High but stable Latency is something you can handle.
Latency that changes from moment to moment - much less so.

## Not All Latency Is Created Equal

If a request always takes 20 milliseconds -
the system can plan around that.

If a request sometimes takes 5 milliseconds,
sometimes 20,
and sometimes 200 -
the system no longer knows what to expect.

This is where a critical concept comes in: jitter.

## What Is Jitter, Really?

Jitter is the variance in packet arrival time on a network.
Not how long it takes on average -
but how stable that time actually is.

Two networks can show the same average Latency,
but the system's experience on them will be completely different:

- One network: slow, but consistent
- Another network: sometimes very fast, sometimes very slow

From a system's perspective - the second network is more dangerous.

## Why Variance Is More Harmful Than Slowness

Systems are designed around assumptions.
Buffers, timeouts, retries, backpressure -
all of them assume reasonable time ranges.

When variance grows:

- Queues fill up unpredictably
- Timeouts trigger unnecessarily
- Retries create additional load
- Components lose sync with each other

The problem isn't the time itself -
it's the inability to predict it.

## An Analogy: The Inconsistent Highway

Imagine a road where:

- Sometimes the drive takes 10 minutes
- Sometimes 40
- With no clear pattern

Versus a road that always takes 30 minutes.

In most cases, drivers would prefer the second road.
Not because it's faster -
but because you can plan around it.

Systems think exactly the same way.

## Why Predictability Matters More Than Speed

A good system doesn't just aim to be fast.
It aims to be predictable.

Predictable Latency enables:

- Proper load planning
- Accurate resource allocation
- A stable user experience
- Controlled, non-chaotic scale

Unpredictable Latency forces the system to operate in a permanent state of emergency.

## Designing Systems Under Uncertainty

Once you understand that variance is the real threat,
the focus shifts:

- Less chasing the last millisecond
- More control over the tails (P95, P99)
- More mechanisms that smooth out spikes
- Fewer optimistic assumptions about the network

A system that doesn't plan for jitter -
is planning surprises for itself.

## Conclusion

Latency is a number.
Variance is a behavior.

And systems don't experience numbers -
they experience behavior over time.

Once you understand that,
you understand that on the network too -
certainty matters more than speed.
