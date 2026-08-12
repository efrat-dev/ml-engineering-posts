---
language: "en"
title: "Retries - A Recovery Mechanism or a Damage Multiplier"
categories:
  - "Communication"
tags:
  - "Retries"
  - "Exponential Backoff"
series: "When Communication Breaks"
previousPost: "2-timeouts-en"
nextPost: "4-load-vs-spikes-en"
slug: "3-retries-en"
---


# Retries - A Recovery Mechanism or a Damage Multiplier

After setting a Timeout,
the system faces a question that seems almost automatic:

the request got cut off -
do we try again?

Intuition says yes.
The logic seems simple:
maybe it was a momentary glitch,
maybe next time it'll work.

But this is exactly where the problem begins.

## A Retry Isn't a Fix - It's a Multiplication

A Retry isn't "continuing from where we stopped."
It's creating a new request.

Every Retry:

- Consumes additional resources
- Re-enters a queue
- Faces the same load conditions
- And sometimes meets a system in worse shape than before

If the original problem was caused by load -
a Retry doesn't solve it.
It deepens it.

## Retry Amplification

One small failure can turn into a wide-reaching event:

One request gets stuck →
Timeout triggers a Retry →
ten requests become twenty →
load doubles →
Latency rises →
and more Timeouts get triggered.

This is Retry amplification:
a response that grows the problem it was trying to solve.

The system doesn't fall because of the failure -
it falls because of the response to the failure.

## Why Retries Look "Right" During Design

Because they work nicely:

- In tests
- Under low load
- And for isolated failures

But production isn't a lab.

In a live system:

- Network failures aren't uniform
- Load doesn't spread out evenly
- And components fail together, not alone

A Retry that suits a local glitch
is dangerous during a systemic failure.

## Exponential Backoff - Not a Magic Solution

Exponential backoff is a Retry mechanism where each retry attempt happens after a longer wait than the previous one.

For example:

- First attempt - immediately
- Second attempt - after 100 milliseconds
- Third attempt - after 200
- Then - 400, 800, and so on

In other words, the time between attempts grows exponentially.

The idea is simple:
don't flood the system with tightly packed retries,
and give it "breathing room" to recover.

And it really does help.

Backoff:

- Slows down the rate of Retries
- Spreads them out over time
- And reduces immediate load at the moment of failure

But this is exactly where its limitation lies.

## Why It Doesn't Solve the Fundamental Problem

Exponential backoff still assumes one thing:
that eventually -
it's worth trying again.

If the system on the other side:

- Is under sustained load
- Suffers from a structural bottleneck
- Or simply isn't available

then even a slow Retry,
with growing wait times,
is accumulating damage.

It:

- Keeps consuming resources
- Keeps holding State
- And keeps adding future load

The problem hasn't disappeared -
it's only been postponed.

## A Retry Without Context Is a Bet

A Retry needs to answer just one question:
is there a reasonable chance the next attempt will succeed more than the last one?

If the answer isn't clear -
a Retry is a bet.

And bets, at large scale,
tend to lose.

## When Not to Try Again

There are situations where a Retry is the worst thing you can do:

- When the failure stems from load
- When the system on the other side is signaling "I'm struggling"
- And when there's no clear limit on the number of attempts

In these situations,
giving up quickly is better than blind persistence.

## An Analogy

Think of a door that won't open.

If you knock again immediately -
you're putting pressure on whoever's inside.

If you wait a moment -
maybe it'll open up.

But if it's clear the door is jammed -
continuing to knock over and over
just creates noise and pressure.

A smart Retry knows when to stop.

## A Retry as a Systemic Choice

Like a Timeout,
a Retry isn't only a technical decision.

It determines:

- Who absorbs the failure
- How much load it's okay to generate to "try again"
- And where the line is between recovery and harm

A stable system
doesn't ask "how do we retry" -
it asks "when don't we."

## Looking Ahead

Retries and Timeouts are just the beginning.

Even a system that behaves nicely with individual requests
can break
when load arrives in waves.

In the next part we'll enter a completely different question:
not why systems break under load -
but why they break specifically during sharp changes.

In the next post we'll cover Load Spikes,
and why "we have enough capacity"
is one of the most dangerous sentences in production.
