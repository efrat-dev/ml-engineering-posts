---
language: "en"
title: "Load Isn't the Enemy - Spikes Are"
categories:
  - "Communication"
tags:
  - "Load"
  - "Burstiness"
series: "When Communication Breaks"
previousPost: "3-retries-en"
nextPost: "5-backpressure-en"
slug: "4-load-vs-spikes-en"
---


# Load Isn't the Enemy - Spikes Are

After talking about Timeouts and Retries,
it's easy to think the main enemy of systems is load.

Too many requests.
Too many users.
Too much work.

But that's a common mistake.

Most systems don't break from steady load.
They break from sharp changes.

## Steady Load Is a State You Can Plan For

Stable load, even if high:

- Can be measured
- Can be predicted
- And can be optimized for

A system operating under steady load
can:

- Tune queues
- Allocate resources
- And adjust rates

Even if it's close to its limit -
its behavior is predictable.

## Spikes Break Assumptions

A Spike is a sharp change:

- A sudden wave of requests
- A sharp increase in rate
- A short but aggressive event

The problem isn't the quantity -
it's the rate.

Spikes hit exactly the points where the system relies on assumptions:

- That queues will empty out
- That Latency will stay in a reasonable range
- That Timeouts will "be enough"

And once those assumptions break -
all the mechanisms we've discussed start reacting non-linearly.

## Burstiness: Why Averages Lie Again

Burstiness is the accurate description of reality:
requests don't arrive at a uniform rate,
they arrive in waves.

Even if the average looks reasonable -
the system experiences extreme moments.

At the moment of a burst:

- Queues fill up all at once
- Latency spikes
- Timeouts get triggered
- Retries kick in

And it all happens before the system "realizes" something has changed.

## Why "We Have Enough Capacity" Isn't Enough

This is one of the most dangerous sentences in production.

Capacity is usually measured:

- On average
- Under calm conditions
- And assuming stable rates

But a spike doesn't test capacity -
it tests response times under pressure.

If the system isn't able to:

- Absorb momentary load
- Or reject it in a controlled way

theoretical capacity won't save it.

## An Analogy

Think of a restaurant.

If 100 people arrive over the course of an evening -
the system works.

If 100 people walk in at once -
even a large restaurant will collapse.

The kitchen hasn't changed.
The rate has.

## Load as a Dynamic Problem, Not a Static One

A mature system doesn't ask:
"how many requests can we handle?"

It asks:

- How fast can we respond to change
- How do we absorb waves
- And where do we dampen pressure

Load isn't a number.
It's behavior over time.

## Looking Ahead

When load arrives in waves,
and the system starts choking,
one critical mechanism becomes necessary:

the ability to say:
not now.

In the next post we'll cover Backpressure -
and why systems that don't know how to reject requests
break even when their intentions are good.
