---
language: "en"
title: "Backpressure - When You Don't Say \"Yes\" to Everything"
categories:
  - "Communication"
tags:
  - "Backpressure"
series: "When Communication Breaks"
previousPost: "4-load-vs-spikes-en"
nextPost: "6-queues-as-a-liability-en"
slug: "5-backpressure-en"
---


# Backpressure - When You Don't Say "Yes" to Everything

After seeing why systems break from spikes
and not from steady load,
an uncomfortable but necessary question arises:

what happens when the system simply can't keep up with the rate?

The common instinct is:
try to keep up no matter the cost.

And that's exactly the problem.

## Systems That Don't Know How to Say "No"

A system that tries to accept every request:

- Holds queues that keep growing
- Drags high Latency into every request
- And overloads even healthy components

It might be polite -
but it's dangerous.

Because instead of failing early and locally,
it causes a wide, slow failure.

## What Backpressure Actually Is

Backpressure is a simple but unintuitive principle:

when a component downstream is struggling -
it signals the component above it to slow down, reject, or stop.

Not to pile on more.
Not to "figure it out somehow."
But to reflect reality.

This is a mechanism where the pace is dictated by the weakest link,
not by whoever sends fastest.

## Why Backpressure Feels Unnatural

Because it goes against the intuition of service.

It's easier to think:

- "We'll queue it and solve it later"
- "We won't disappoint anyone right now"
- "The system will recover"

But in practice,
every request that enters during load
is a future commitment.

Backpressure is the choice not to commit.

## Where to Put Backpressure

Backpressure isn't a single component -
it's a decision about a boundary.

It can be implemented in:

- Rejecting requests at the entry gate
- Rate-limiting between components
- Returning a fast error instead of waiting
- Or temporarily halting requests from a queue

The exact location matters less than the principle:
load has to be dampened before it spreads.

## The Difference Between Rejecting and Breaking

There's a critical difference between:

saying "not now"
and:
saying "yes" and then not delivering

Rejection:

- Hurts some requests
- Preserves the system
- And enables quick recovery

Breaking:

- Hurts all of them
- Creates instability
- And leads to cascading collapse

Backpressure is the choice of controlled rejection
over general breakage.

## An Analogy

Think of an elevator.

If it's full,
it simply doesn't close on more people.

It doesn't try to "make it work,"
doesn't push harder,
and doesn't hope something will happen.

It doesn't risk stopping entirely from overload.

It limits -
and that's how it stays safe.

## Backpressure as a Cultural Principle

Systems that have Backpressure signal:

- Clear boundaries
- Prioritizing stability over politeness
- And an understanding that load is part of life

Systems without Backpressure
rely on hope.

And in production,
hope isn't a strategy. It's a risk.

## Looking Ahead

Backpressure stops the flow -
but it doesn't solve everything.

Because even a "controlled" queue
is still a queue.

And at some point you need to ask:
what's the cost of the waiting itself?

In the next post we'll dive into exactly this point:
why a Queue isn't a solution -
but a future commitment that can turn into debt.
