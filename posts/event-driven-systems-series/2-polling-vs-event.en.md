---
language: "en"
title: "Polling vs. Event: Who Asks and Who Announces"
categories:
  - "System Architecture"
tags:
  - "Event-Driven"
  - "Polling"
series: "Event-Driven Systems"
previousPost: "1-what-is-an-event-en"
nextPost: "3-what-is-a-broker-en"
slug: "2-polling-vs-event-en"
---


# Polling vs. Event: Who Asks and Who Announces

Once we understand that an Event is a declaration of a fact,
the next step is to understand a more basic question:

how do you even find out that something happened?

There are two fundamental approaches:

ask over and over,
or have someone tell you when it happens.

These are Polling and Event.

## Polling: Asking Whether Something Changed

Polling is a model where a component in the system:
checks over and over whether there's a change.

For example:

"was a new order created?"
"was the file updated?"
"is the queue non-empty?"

The check happens:

- At fixed intervals
- Regardless of whether anything actually happened

Polling is seen as "outdated" or "inefficient" -
but that's only a partial view.

## Why Polling Exists at All

Polling is simple, predictable, and clear.

Its advantages:

- No intermediary
- No dependency on an external actor
- No need to manage a complex information flow

The component asks -
and gets an answer.

## Event: Being Told When It Happens

In the Event-driven model, the picture flips.

The component doesn't ask.
It assumes:
"when there's a relevant fact - I'll be told about it."

Instead of repeated checks:

- A fact occurs
- An event is created
- And the event is distributed to whoever is listening

## So Why Isn't Event Always "Faster"

Here's where the mistaken intuition comes in:
if you're not asking all the time -
it must be faster.

But Event saves on checks,
not on time.

For an event to arrive:

- It needs to be created
- Sent
- Mediated
- And received

Every such step adds delay.

Polling asks early.
Event responds later - but more intelligently.

## Responsiveness vs. Latency

Polling is wasteful - but predictable.
Event is efficient - but adds mediation.

So the real difference isn't:
fast vs. slow,

but:

Polling gives a predictable response at a fixed pace.
Event gives a conditional response with no guarantee it will arrive, at a variable arrival time.

It's a choice between:
control over time
and savings on work.

## An Analogy

Imagine two people:

One:
checks every minute whether the door opened.

The other:
asks to be called when it happens.

The second one doesn't get tired -
but if someone is slow to notify them,
they'll find out later.

## The Bottom Line

Polling and Event aren't good or bad.
They represent different philosophies:

Polling preserves control over time: the system checks repeatedly until there's an answer.
Event gives up control over time: the system doesn't wait for closure, it moves on and handles what happened when it arrives.

Polling says: it matters to me to know exactly what the state is, even if it costs me in performance.
Event says: it matters to me not to get stuck, even if I don't know when everything will resolve.
