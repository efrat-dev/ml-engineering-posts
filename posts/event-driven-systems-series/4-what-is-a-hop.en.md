---
language: "en"
title: "What Is a Hop"
categories:
  - "System Architecture"
tags:
  - "Event-Driven"
  - "Hop"
series: "Event-Driven Systems"
previousPost: "3-what-is-a-broker-en"
nextPost: "5-serialization-cost-en"
slug: "4-what-is-a-hop-en"
---


# What Is a Hop

A Hop is one transfer of information between two separate components in a system.

Every time an event:

- Leaves one component
- And enters another

That's one Hop.

It doesn't matter if it's:

- A different process
- A different service
- A different machine
- Or an infrastructure component in between

If the information crosses a boundary point - that's a Hop.

## Why Hop Is an Important Concept

Because a Hop isn't computation - it's movement.
And movement in systems costs time.

In every Hop, at least one of the following happens:

- Data copying
- Serialization / deserialization
- Queuing and waiting
- Rescheduling of work
- Passing through the network

Even if each such step is "short" -
they accumulate.

## A Simple Example

Suppose an event travels like this:

- Service A creates an event
- The event passes to a Broker
- The Broker forwards it to Service B

That's already two Hops:

A → Broker
Broker → B

If there's another Broker, another queue, or another processing layer -
another Hop is added.

## Why This Is Critical in Event-Driven Systems

In Event-driven systems:

- Events tend to pass through many Hops
- Every Hop adds Latency
- And the time doesn't sit in one clear place

That's why a system can feel "slow"
even without heavy computation
and even without a single bottleneck.

The time simply gets spread out along the way.
