---
language: "en"
title: "The Dangerous Foundational Assumption - The Network Is Reliable \"Most of the Time\""
categories:
  - "Communication"
tags:
  - "Uncertainty"
series: "When Communication Breaks"
previousPost: "0-introduction-en"
nextPost: "2-timeouts-en"
slug: "1-the-network-is-not-reliable-en"
---


# The Dangerous Foundational Assumption - The Network Is Reliable "Most of the Time"

One of the quietest assumptions in communication systems -
and one of the most dangerous -
is the assumption that "most of the time everything works."

It's never stated explicitly,
never written into an architecture document,
but almost every system leans on it.

And it's almost always wrong.

## "Most of the Time" Isn't an Engineering Concept

"Most of the time" is a human phrasing, not a systems one.

Systems don't experience time the way humans do.
They experience:

- Rates
- Probabilities
- And dependencies between events

A failure that occurs 0.1% of the time
isn't "rare" if the system handles millions of requests a day.

At scale,
negligible becomes routine.

## Why the Network Is Never Truly Reliable

A real network is made up of:

- Links
- Queues
- Changing paths
- And independent components with lives of their own

There's no single point where "everything is fine."
There are only moments where you don't see the failure.

Latency rises and falls,
Packets disappear and come back,
and queues fill up without announcing it.

The network doesn't break -
it sways.

## The Problem Isn't the Failure - It's the Assumption

Network failures aren't the central problem.
The problem is that many systems aren't designed to expect them.

Common assumptions:

- If we didn't get an error - everything's fine
- If a request is slow - it's a temporary issue
- If it's working now - it'll work in a moment too

These are psychological assumptions, not engineering ones.

## Partial Failure Is the Default

On a network:

- Part of the system is always lagging
- Part is always under load
- And part is always recovering from something

There's no moment of completeness.

A healthy system isn't one without failure -
it's one that behaves predictably even when failure is already present.

## An Analogy

Think of an intercity highway.

There's no hour of the day without a slowdown somewhere:
roadwork, a minor accident, a momentary jam.

Whoever plans a trip assuming the road is "clear most of the time" -
will sometimes arrive on time,
and sometimes late without understanding why.

Whoever plans assuming there's always friction -
plans differently.

## The Systemic Implication

Assuming reliability leads to:

- Overly aggressive Timeouts
- Uncontrolled Retries
- And designs that fall apart at the edge

By contrast,
designing around unreliability:

- Limits damage
- Dampens chain reactions
- And produces stability even under pressure

## The New Starting Point

This advanced series starts from a single assumption:

The network isn't reliable -
and never will be.

All the questions that follow -
Timeouts, Retries, Backpressure, Consistency -
stem from this assumption.

In the next post we'll dive into the first decision born from it:
how you set a Timeout -
and why it's one of the least scientific decisions in a system.
