---
language: "en"
title: "Ordering - Why Order Is an Expensive Luxury"
categories:
  - "Communication"
tags:
  - "Ordering"
series: "When Communication Breaks"
previousPost: "6-queues-as-a-liability-en"
nextPost: "8-idempotency-en"
slug: "7-ordering-en"
---


# Ordering - Why Order Is an Expensive Luxury

After dealing with load, queues, and rejection,
it looks like the system is finally "stabilizing."

But now another, almost natural requirement appears:
not just that requests get handled -
that they get handled in the right order.

And this is where the real cost begins.

## Why Order Feels Self-Evident

As humans, we think in order:

- This first
- Then this
- And then the result

It's easy to project that onto systems too:
if we sent request A before request B -
clearly A should happen first.

But networks and distributed systems
don't experience the world that way.

## Order Isn't a Natural Property of Communication

In a real system:

- Packets arrive at different times
- Requests travel different paths
- Components respond at different rates

There's no "shared clock."
There's no single point of view that defines absolute order.

To produce order -
you have to enforce it.

And enforcement is expensive.

## The Cost of Enforcing Order

Preserving Ordering requires:

- Waiting for a slow request so as not to skip past it
- Delaying work even when resources are free
- Keeping State to remember what's "waiting for what"

The result:

- Higher Latency
- Lower Throughput
- And limited scale

The system sacrifices parallelism
to preserve sequence.

## Out-of-Order Processing - Not a Bug, a Strategy

Processing out of order
sometimes looks like a problem.

But in practice, it's one of the most powerful ways to:

- Make use of resources
- Reduce response times
- And keep working even under load

Out-of-order processing means:
handle what's ready now,
and don't wait for what's stuck.

That's giving up order -
in favor of availability and stability.

## When Order Really Matters

Not every system can give up Ordering.

Order matters when:

- There's a direct dependency between operations
- One state change must happen before another
- Or when business meaning depends on the sequence

But even then,
it's worth asking:
is order needed everywhere -
or only at a specific point?

Local enforcement
is cheaper than global enforcement.

## An Analogy

Think of a restaurant kitchen.

If every dish must go out in the exact order it was ordered -
the kitchen gets stuck.

If dishes go out as each one becomes ready -
the pace increases,
but you need to make sure you didn't forget any diner along the way.

The choice is between perfect order
and flow.

## Ordering as a Conscious Choice

A stable system doesn't assume order by default.

It asks:

- Where is order really needed
- Where can it be given up
- And what's the cost of each choice

Order is sometimes a luxury,
sometimes a necessity, but always - expensive.

## Looking Ahead

Once you give up absolute order,
you lose one basic guarantee:

that every operation happens exactly once.

Without order:

- A request can arrive twice
- A response can come back late
- And the system doesn't always know if an operation already happened

The fear here is simple:
that something happens again - without us noticing.

An operation that happens twice
isn't a small mistake -
it's a duplicated state change,
that can cause quiet, cumulative damage.

This is where another critical concept comes in,
one that lets systems live with uncertainty:

Idempotency.

In the next post we'll cover designing systems
as if everything might be sent more than once -
and why that's not a pessimistic assumption, but a realistic one.
