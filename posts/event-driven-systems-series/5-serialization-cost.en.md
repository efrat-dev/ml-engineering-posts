---
language: "en"
title: "Serialization: The Cost of Moving Information"
categories:
  - "System Architecture"
tags:
  - "Event-Driven"
  - "Serialization"
series: "Event-Driven Systems"
previousPost: "4-what-is-a-hop-en"
nextPost: "6-topic-key-event-en"
slug: "5-serialization-cost-en"
---


# Serialization: The Cost of Moving Information

After the event is created,
and after the Broker receives it -
comes a stage that looks completely technical, almost transparent:

how the information itself travels.

This is where Serialization comes in -
and with it, one of the most underappreciated costs in Event-driven systems.

## What Serialization Actually Is

Serialization is the operation where information in memory
is converted into a representation that can be transferred:

- Between processes
- Between machines
- Over a network
- Or into a queue

A "live" object, structure, or piece of data
becomes a sequence of bytes.

Without Serialization -
there's no communication.

## Why It's Not Trivial

In memory, information is:

- Linked
- Rich
- And sometimes context-dependent

To transfer it, you need to:

- Detach it from its context
- Choose a format
- Decide what goes in and what doesn't
- And give up things along the way

This isn't copying.
It's translation.

And every translation costs time.

## Where the Time Comes In

Serialization adds Latency across several layers:

- Time to convert to the format
- Time to copy into contiguous memory
- Time to send
- And time to unpack on the other side (Deserialization)

Every step is short -
but it happens on every single event.

When load is low - it's negligible.
At scale - it accumulates very quickly.

## Why This Hurts Especially in Event-Driven Systems

In an Event-driven system:

- There are many small events
- That pass through many stations
- And sometimes several consumers

Every Hop adds:
Serialization → Deserialization → Serialization again.

In other words:
not only does the event move -
it gets taken apart and rebuilt, over and over.

## The Format Is a Design Decision

Choosing a format isn't aesthetics.
It determines:

- Message size
- Processing time
- Future flexibility
- And the system's ability to evolve

A format that's "convenient" for the developer
can be expensive for the system.

And the same principle returns:
what looks cheap in code -
costs dearly at runtime.

## An Analogy

Imagine an idea in your head.

To convey it:
you need to phrase it in words,
write it,
send it,
and the other side needs to read and understand it.

That's always slower than just thinking it alone.

Serialization is that writing.

## The Bottom Line

Serialization isn't an implementation detail.
It's a fundamental condition for communication -
with a fixed cost.

Event-driven adds mediation.
Serialization adds time.

And when a system "feels slow"
without heavy computation and without a clear bottleneck -
often,
the time is simply being spent
moving information from one place to another.
