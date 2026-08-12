---
language: "en"
title: "HTTP - Why It Looks Simple, But Is Far From It"
categories:
  - "Communication"
tags:
  - "HTTP"
series: "How Computers Talk"
previousPost: "9-queues-en"
nextPost: "11-protocol-evolution-en"
slug: "10-http-en"
---


# HTTP - Why It Looks Simple, But Is Far From It

After talking about queues, Latency, and trade-offs at the communication level,
we can finally get to the protocol most people encounter every day -
HTTP.

It's perceived as an "easy" protocol:
send a request, get a response, done.

But that simplicity is a deliberate illusion.

## HTTP Is a Protocol of Discipline

HTTP doesn't try to solve network problems.
It assumes the network is problematic - and adapts itself accordingly.

Its central assumption is simple:
every request stands on its own.

No memory,
no promise of continuity,
and no expectation that the other side will "remember" anything.

This isn't a limitation -
it's a deliberate choice.

## Statelessness as an Advantage, Not a Flaw

HTTP is defined as Stateless:
every request is a world unto itself.

The implication:

- The server doesn't need to remember who asked before
- There's no dependency on previous requests
- And every request can reach any available server

This is what enables:

- High scale
- Load balancing
- And replacing servers without breaking the system

The cost:
context needs to be sent again and again.

## Why This Works Despite the Inefficiency

On the surface, resending context seems wasteful.
In practice, it's what enables resilience.

Without State:

- A local crash doesn't break other conversations
- Queues shrink faster
- And the system recovers easily

HTTP sacrifices elegance for the sake of stability.

## An Analogy

Think of a service counter where every inquiry is written on a complete form.

That's slower than "continuing a conversation,"
but if the clerk gets replaced -
nothing gets lost.

## HTTP Doesn't Stand Alone

HTTP sits on top of:

- TCP (or a similar protocol)
- Queues
- Routing
- And mechanisms invisible to the eye

It looks simple only because other layers
absorb the complexity on its behalf.

## The Systemic Implication

When an HTTP-based system looks slow or unstable,
the problem is almost never in HTTP itself.

It's found:

- In the queues underneath
- In Latency that isn't measured
- Or in State that got introduced "by accident" on top of it

HTTP works well as long as you don't try to turn it into something it isn't.

## Looking Ahead

HTTP hasn't stayed static.
Over time it evolved, branched out, and changed -
but almost always without breaking the past.

In the next post we'll cover exactly this question:
why protocols are almost never fully replaced -
and how the world keeps moving forward without stopping.
