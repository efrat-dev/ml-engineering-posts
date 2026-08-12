---
language: "en"
title: "Timeouts - The Hardest Decision in Communication"
categories:
  - "Communication"
tags:
  - "Timeouts"
series: "When Communication Breaks"
previousPost: "1-the-network-is-not-reliable-en"
nextPost: "3-retries-en"
slug: "2-timeouts-en"
---


# Timeouts - The Hardest Decision in Communication

After giving up the assumption that the network is reliable,
the first unavoidable decision immediately appears:

How long do you wait?

Not which protocol,
not which algorithm,
but how much time you give the other system
before deciding something isn't working.

This decision looks small.
In practice - it's one of the most dangerous decisions in a system.

## A Timeout Isn't a Measurement - It's a Guess

There's no metric that tells you:
"this is the right amount of time to wait."

Latency varies:

- Between requests
- Between load conditions
- Between moments of the day
- And between different components in the chain

Every Timeout chosen
is a bet on the future
based on the past.

And even if the bet was right yesterday -
there's no guarantee it's right now.

## Why There's No "Correct" Timeout

A Timeout that's too short:

- Cuts off requests that would have still succeeded
- Creates a feeling of instability
- And triggers early retries

A Timeout that's too long:

- Keeps resources tied up
- Extends queues
- And hides real problems

There's no perfect balance point,
because there's no network stable enough to justify one.

The "correct" Timeout
always depends on context -
and the context keeps changing.

## Timeout, Latency, and Queues - A Closed Loop

A Timeout doesn't operate in a vacuum.

Once a queue grows:

- Latency increases
- More requests cross the Timeout threshold
- More requests get cut off
- And more retries get sent

The Timeout doesn't detect a problem -
it reacts to it.

And in its reaction,
it sometimes makes it worse.

## Timeout as a Trigger for Secondary Load

This is the most dangerous failure:
not the original failure,
but what the system does in response to it.

One delayed request →
Timeout →
Retry →
another request →
more load →
another Timeout.

This is how retry storms are born:
not because the system didn't work,
but because it worked too slowly.

The Timeout turned from a protective mechanism
into a damage multiplier.

## An Analogy

Think of a phone call that isn't being answered.

If you hang up after one ring -
you'll try again and again,
overloading the line.

If you wait for long minutes -
you'll waste time,
and keep waiting even when it's already clear no one will answer.

There's no "right" time to hang up -
there's only a conscious choice of price.

## A Timeout Is a Value Decision

Behind every Timeout hides a deeper question:
what are we willing to give up?

- Responsiveness?
- Stability?
- Resource utilization?
- User experience?

The Timeout determines:
who suffers when there's a problem -
the sender, the receiver, or the whole system.

This isn't a technical decision.
It's policy.

## An Important Warning Sign

If the Timeout was set because:

- "That's how it was before"
- "It sounded reasonable"
- Or "it worked in testing"

It's very likely dangerous in production.

A Timeout without context
is a recipe for cascading failure.

## Looking Ahead

Once a Timeout exists,
an unavoidable question arises:

if we cut off a request -
do we try again?

This is where a mechanism enters that looks harmless,
but is capable of killing an entire system:

Retries.

In the next post we'll examine:
when retrying is a lifeline -
and when it's exactly the thing that drowns the system.
