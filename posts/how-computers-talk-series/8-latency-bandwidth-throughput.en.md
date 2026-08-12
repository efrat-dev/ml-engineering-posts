---
language: "en"
title: "Latency, Bandwidth, and Throughput - And Why Everyone Confuses Them"
categories:
  - "Communication"
tags:
  - "Latency"
  - "Throughput"
series: "How Computers Talk"
previousPost: "7-what-is-connection-en"
nextPost: "9-queues-en"
slug: "8-latency-bandwidth-throughput-en"
---


# Latency, Bandwidth, and Throughput - And Why Everyone Confuses Them

After understanding what a Packet is, what a Connection is, and how protocols behave,
we can finally ask the question that bothers almost every system:
why is this slow?

The answer starts with distinguishing between three concepts that sound similar -
but describe completely different problems.

## Latency: How Long It Takes to Start Getting a Response

Latency is the waiting time.
The moment between "I sent" and "something started arriving."

This is a measure of responsiveness, not rate.

Latency is affected by:

- Logical distance on the network
- The number of layers and intermediaries
- Coordination between parties
- And queues that form along the way

Even if you only send one small Packet -
Latency still exists.

## Bandwidth: How Much Can Be Transferred in Parallel

Bandwidth describes capacity.
How much information can be transferred in a given amount of time.

This is a potential, not a promise.

High bandwidth means:
if everything is flowing - you can stream a lot.

But it doesn't say:

- When the information will start arriving
- Or whether it will arrive on time

## Throughput: What Actually Got Through

Throughput is the actual result.
How much information successfully passed over time.

It's affected by:

- Bandwidth
- Latency
- Packet loss
- Queues
- And the protocol chosen

Throughput is what you feel -
not what's guaranteed.

## Why It's So Easy to Get Confused

A system can have:

- High Bandwidth
- Reasonable Throughput
- And still feel slow

Why?
Because high Latency makes every action feel "stuck,"
even if a lot of information is moving overall.

That's why many systems look powerful on paper -
and disappoint in reality.

## An Analogy

Think of a highway.

Latency is the time it takes to reach the entrance to the highway.
Bandwidth is the number of lanes.
Throughput is the number of cars that actually got through.

A highway with ten lanes doesn't help,
if the traffic jam is at the exit from the city.

## The Systemic Implication

Optimizing without understanding the difference between these three concepts
almost always addresses the wrong problem.

Sometimes you need to:

shorten Latency
and not increase Bandwidth.

Sometimes you need to:

improve Throughput
and not touch response time.

Without this distinction -
every improvement is a guess.

## Looking Ahead

Once you understand that Latency doesn't just disappear on its own,
the quiet factor that amplifies it emerges:
queues.

In the next post we'll dig into Queues -
and why they form even when it seems like there are enough resources.
