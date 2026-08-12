---
language: "en"
title: "Idempotency - Designing as if Everything Will Be Sent Twice"
categories:
  - "Communication"
tags:
  - "Idempotency"
series: "When Communication Breaks"
previousPost: "7-ordering-en"
nextPost: "9-consistency-vs-availability-en"
slug: "8-idempotency-en"
---


# Idempotency - Designing as if Everything Will Be Sent Twice

After giving up absolute order,
and after understanding that Timeouts and Retries can cause the same operation to happen again -
one critical question remains:

what happens if it actually does?

## Duplicates Aren't an Exception - They're the Default

In a perfect world, every operation happens once.
In the real world:

- A request can be sent again
- A response can get lost
- And the system doesn't always know what already happened

So the safe assumption isn't:
"this will happen once"
but rather:
"this might happen again."

Idempotency is the way to live with that assumption.

## What Idempotency Actually Is

An idempotent operation is one where even if it's performed twice -
the final result will be identical to performing it once.

For example:

"set the status to active"
even if the request arrives twice - the resulting state is the same.

By contrast:

- "Add a user"
- "Transfer an amount"
- "Create a new resource"

These are operations where an additional execution changes the state again.

Idempotency doesn't say "it won't happen twice."
It says:
even if it does - it's not harmful.

## Why This Matters Especially Now

Once there's:

- Retries
- Out-of-order processing
- And Timeouts

the system can no longer know for certain:
whether an operation failed -
or simply succeeded without us knowing.

Without Idempotency:
a Retry can create:

- Duplicate data
- A silent state change
- Or damage that surfaces much later

With Idempotency:
a Retry becomes safer -
because the operation itself is forgiving of duplicates.

## Idempotency as an Architectural Principle

Idempotency isn't a local fix.
It's a way of designing.

A system built this way:

- Assumes duplicates will happen
- Defines a clear identity for operations
- And ensures their effect doesn't accumulate

A system that doesn't do this:

- Relies on luck
- Or on the assumption that "it won't happen"

And at scale -
it always happens.

## The Connection to Retries and Failures

Retries without Idempotency are a bet.
Retries with Idempotency are a tool.

The difference isn't in the Retry code -
it's in how the operation itself behaves.

Failure is unavoidable.
Duplication doesn't have to be destructive.

## An Analogy

Think of a "save" button.

If a double click saves the same state twice -
there's no problem.

If every click creates a new copy -
a double click becomes a bug.

Idempotency is the difference between a forgiving button
and a dangerous one.

## The Bottom Line

Idempotency isn't an optimization.
It's protection.

It enables:

- Retrying without fear
- Giving up order without losing control
- And building systems that hold up even when the world isn't predictable

## Looking Ahead

Even with Idempotency,
you still need to choose what to give up when there's a problem.

Not everything can be both available and consistent.

In the next post we'll touch this choice directly:
Consistency vs. Availability -
not as theory, but as a daily decision that affects users.
