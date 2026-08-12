---
language: "en"
title: "Why Queues Are the Hidden Heart of Communication"
categories:
  - "Communication"
tags:
  - "Queues"
  - "Latency"
series: "How Computers Talk"
previousPost: "8-latency-bandwidth-throughput-en"
nextPost: "10-http-en"
slug: "9-queues-en"
---


# Why Queues Are the Hidden Heart of Communication

After clarifying the difference between Latency, Bandwidth, and Throughput,
we can expose the factor that connects them - and sometimes makes all of them worse:
queues.

Most people think of queues as a problem.
In communication systems, they're an unavoidable outcome.

## A Queue Forms From a Difference in Rates

A queue forms wherever:

- Something comes in faster than it goes out
- Even for a short time
- Even if, on average, everything is "fine"

The network doesn't flow at a uniform rate.
Rates change, load arrives in waves, and resources are available for a moment - and then disappear.

The queue is where that gap accumulates.

## Why Queues Appear Even When There Are Enough Resources

This is one of the paradoxes of systems:
even if there are enough resources on average,
during brief moments of load -
a queue forms.

And once a queue forms:

- Latency spikes
- Throughput starts to suffer
- And the system's experience changes

## A Queue Is a Memory of the Past

Every Packet waiting in a queue
carries with it the load that already existed.

Latency isn't just a problem of the present -
it's a result of what happened before.

That's why systems don't "recover immediately":
even after the load has passed,
the queue is still there.

## An Analogy

Think of a checkout line at a grocery store.

Even if the cashier is fast,
if several people suddenly arrive together -
a queue forms.

After a moment, the rate returns to normal,
but whoever just walked in is still waiting.

Their wait time is affected by the past, not the present.

## Queues Aren't a Bug - They're a Protective Mechanism

Without queues:

- Packets would be dropped immediately
- The system would collapse under minor fluctuations
- And every small load spike would break it

A queue allows temporary absorption of load.

But if it has no limits -
it becomes the source of failure itself.

## The Systemic Implication

The question isn't:
"how do we eliminate queues"

but rather:

- Where to place them
- How large to let them get
- And when to prefer rejection or giving something up

This is no longer just a networking question -
it's a policy question.

## Looking Ahead

When queues exist everywhere,
and the system starts choosing what to sacrifice -
higher-level protocols come into the picture.

In the next post we'll examine HTTP -
and why it looks simple, but is built on deep trade-offs.
