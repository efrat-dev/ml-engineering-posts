---
language: "en"
title: "Consistency vs. Availability - Not Theory, a Daily Choice"
categories:
  - "Communication"
tags:
  - "Consistency"
  - "Availability"
series: "When Communication Breaks"
previousPost: "8-idempotency-en"
nextPost: "10-rpc-messaging-streaming-en"
slug: "9-consistency-vs-availability-en"
---


# Consistency vs. Availability - Not Theory, a Daily Choice

After talking about Timeouts, Retries, Backpressure, queues, order, and Idempotency,
we can finally touch a concept many have heard of -
but few truly live with:

Consistency vs. Availability.

It's usually presented as a theoretical scheme.
In practice - it's a decision made every day,
even when it's not called by name.

## Not Everything Can Be Both Available and Consistent

When there's a failure:

- A slow network
- A component that isn't responding
- A temporary split between parts of a system

the system has to choose:

either:
return an answer fast, even if it's not entirely accurate

or:
wait to be sure, even if that means delay or failure

There's no third option.

This choice isn't a malfunction -
it's a result of reality.

## Why This Isn't a One-Time Decision

It's easy to think:
"our system is one way or the other."

But in practice:
the choice between Consistency and Availability
happens at every endpoint:

- Whether to return a stale value or an error
- Whether to allow a partial operation
- Whether to keep working when not everything is synced

## What the User Actually Feels

Engineers talk about Consistency.
Users experience trust.

A system that's always available but returns confusing data:

- Creates uncertainty
- Is hard to understand
- And the damage accumulates

A system that's consistent but not available:

- Is frustrating
- But usually clear
- Its behavior is easier to explain

In practice, there's no strategy that's always preferred.
The right strategy is the one that fits the context.

## Consistency as a Business Matter

The choice isn't purely technical.

Questions like:

- Is it okay to show outdated information
- Is a partial operation allowed
- Is "roughly correct" preferable to "precise but late"

are business questions.

The common mistake is:
leaving this decision to the system's default.

A default is also a decision -
just one made without ownership and without understanding.

## Consistency and Availability Aren't Absolute Values

A stable system isn't "in favor" of one of them.

It asks:

- Where does it matter to be available at any cost
- Where does accuracy matter more
- And where is it okay to compromise temporarily

And it does this consciously,
not by accident.

## Looking Ahead

Until now we've dealt with decisions inside a single system.

But modern systems aren't alone:
they talk to others.

In the next post we'll go outside -
and examine three different communication philosophies:
RPC, Messaging, and Streaming,
and why the choice is a fundamentally principled one.
