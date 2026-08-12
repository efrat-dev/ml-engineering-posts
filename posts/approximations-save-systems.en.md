---
language: "en"
title: "Why Approximations Save Systems"
categories:
  - "System Architecture"
tags:
  - "Approximation"
  - "System Design"
previousPost: "performance-is-a-timing-problem-en"
slug: "approximations-save-systems-en"
---


# Why Approximations Save Systems

## What Is an Approximation, Anyway?

An approximation is a conscious choice
not to compute the most precise answer possible -
but a good enough answer
given the current conditions.

This isn't a mistake.
It's a design decision.

## Why Do Systems Need Approximations?

Because systems live in a world of constraints:

- Limited time
- Limited resources
- Changing load
- And constant uncertainty

A system that always insists on full precision
behaves as if:

- There's always enough time
- There's always enough memory
- And everything is always available

And in production - that's simply not true.

## What Do Approximations Actually Provide?

Approximations buy the system some very expensive things:

**Predictable response time**
Even if the answer is slightly less precise.

**Controlled resource consumption**
Without sharp, unpredictable spikes.

**Consistent behavior under load**
Instead of collapse or volatility.

**Functional continuity**
Even when parts of the system are unavailable.

In other words:
the system keeps living.

## The Cost vs. the Gain

The cost of an approximation is clear:

- A small deviation from the "ideal" result
- Less pinpoint accuracy

But the gain is far greater:

- Stability
- Predictability
- And control

In systems, perfect accuracy that doesn't arrive on time
is worth less than a good answer that always arrives.

## The Analogy: A Map vs. Reality

A perfectly accurate map,
with every stone and every bend -
is too heavy to use.

A slightly less accurate map,
but light, clear, and available -
gets you to your destination.

Precision went down.
The ability to move - went up.

## Approximations as a Systemic Principle

In inference, approximations show up everywhere:

- Less precision to preserve latency
- Partial computation to preserve throughput
- Estimation instead of full measurement
- Trimming work to prevent collapse

These aren't temporary fixes.
They're architectural choices.

## Summary

Approximations aren't meant to bypass reality.
They're meant to work with it.

The cost is a small deviation.
The gain is a system that lives, responds, and holds up over time.

And in real systems -
that's not a compromise.
It's a condition for existing at all.
