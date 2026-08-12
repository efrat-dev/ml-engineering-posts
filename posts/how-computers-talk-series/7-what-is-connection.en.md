---
language: "en"
title: "What Is a Connection - And Why It's a Logical State, Not a Cable"
categories:
  - "Communication"
tags:
  - "Connection"
series: "How Computers Talk"
previousPost: "6-tcp-vs-udp-en"
nextPost: "8-latency-bandwidth-throughput-en"
slug: "7-what-is-connection-en"
---


# What Is a Connection - And Why It's a Logical State, Not a Cable

After distinguishing between TCP and UDP,
a concept that sounds all too familiar starts to get confusing:
"there's a connection" or "there's no connection."

The intuition immediately goes physical:
a cable is plugged in, a line is open, a link exists.

But on networks -
a connection is almost never a physical thing.
It's a state.

## A Connection Is an Ongoing Agreement

A Connection isn't an open pipe.
It's an ongoing agreement between two parties:

- We're talking to each other
- According to certain rules
- And with an expectation of consistent behavior

In other words, a connection is shared memory:
what's already been sent,
what's been received,
and what's expected to happen next.

Without that memory -
there's no connection, even if Packets are flowing.

## Why a Connection Is Even Needed

A Connection exists to solve a specific problem:
giving communication context over time.

It enables:

- Preserving order
- Detecting gaps
- Understanding whether the other side is "still there"
- And deciding when communication has ended

But all of this comes at a cost.

## The Cost of a Connection: State

A Connection requires State.

Each side needs to remember:

- Who the other party is
- What the state of the conversation is
- And where you are in the communication sequence

State is an asset -
but also a burden.

The more Connections there are:

- The more memory is needed
- The more coordination
- And the more states that can go wrong

That's why large-scale systems
are very careful about excessive use of Connections.

## UDP Without a Connection - and Not by Accident

UDP isn't "incapable."
It simply chooses not to keep state.

No connection,
no memory,
and every Packet stands on its own.

The result:

- Simplicity
- High scale
- And zero commitment to ongoing behavior

This isn't a limitation -
it's a decision.

## An Analogy

Think of an ongoing conversation versus short notes.

In a conversation:
there's context,
there's continuity,
and there's an expectation of ongoing exchange.

With notes:
each note is understood on its own,
and there's no assumption anyone will reply.

Both are legitimate -
but they serve different needs.

## A Connection as an Architectural Choice

The decision to use a Connection
affects the entire system:

- How you handle load
- What happens when a party disappears
- And how resource cleanup happens

This isn't a decision "just about networking" -
it's a deep systems decision.

## Looking Ahead

Once there are connections, Packets, and protocols,
we can finally talk about metrics:
what's slow,
what's fast,
and what "performance" even means in communication.

In the next post we'll cover Latency, Bandwidth, and Throughput -
and why they aren't the same thing, even though it might seem that way.
