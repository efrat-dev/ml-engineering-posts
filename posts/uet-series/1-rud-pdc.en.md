---
language: "en"
title: "What Is RUD PDC, Really - And Why Do Communication Systems Use It?"
categories:
  - "Communication"
tags:
  - "RUD PDC"
  - "UET"
series: "UET Series"
nextPost: "2-uet-en"
slug: "1-rud-pdc-en"
---


# What Is RUD PDC, Really - And Why Do Communication Systems Use It?

When software systems and different components need to pass messages between each other,
there are several ways to do the transfer. Some ways guarantee order, some guarantee reliability, and some are aimed at speed.

RUD PDC is one of those communication mechanisms -
and it combines two important characteristics:

- **RUD** - Reliable Unordered Delivery
- **PDC** - Provider Delivery Control

But what does that actually mean?

Let's break it down into something simple.

## The First Part: RUD - Reliable Unordered Delivery

Reliable - but not ordered

RUD says two things:

### 1. Reliable

Every message that's sent will arrive.
There's no situation where a message "falls through the cracks."

### 2. Unordered

Messages don't necessarily arrive in the order they were sent.

For example:

We sent:
1 → 2 → 3

We might receive:
2 → 3 → 1

This isn't a bug - it's part of RUD's natural behavior.

It's similar to postal mail:
all the packages will arrive - just not necessarily one after another.

### Why Does This Happen?

Because messages can travel through different paths,
some can get delayed, some travel quickly.

The result:

- Reliability ✔
- Order ✘

## The Second Part: PDC - Provider Delivery Control

Control over how and when the message is delivered to the user

PDC refers to the fact that control over delivery to the application doesn't happen "automatically,"
but rather through the infrastructure layer (the Provider).

The infrastructure can:

- Delay a message
- Reorganize it
- Filter it
- Let the application receive messages only when they're ready
- Add rules for load management, errors, and timing

In other words, the application itself doesn't have to deal with the complex logic of "when" and "how" to receive a message.

## So What Is RUD PDC When You Put It All Together?

RUD PDC is a reliable, fast communication channel,
in which:

- Every message does reach the receiver (reliability)
- But they don't arrive in order (built-in lack of order)
- And in addition, there's an infrastructure layer (PDC) responsible for delivery, error handling, and load

This is a very common pattern in real-time systems, distributed systems, and massive communication.

## Why Not Just Enforce Order From the Start?

Great question.
Why not just say: "let's send everything in order"?

Because preserving order is very expensive:

- It requires storing messages
- It requires waiting for missing messages
- It causes delays
- It slows the system down

RUD PDC chooses a fast, efficient solution:
"I guarantee everything arrives - but I don't guarantee when."

## What If the Application Needs Order?

This is where mechanisms like UET, which we'll cover in the next post, come in -
they add the ordering layer on top of RUD PDC.

## An Intuitive Example

Imagine a courier carrying three packages to the same address:

- He guarantees he'll bring all of them
- But he doesn't guarantee he'll bring them in the same order
- Maybe one in the morning, one at noon, one in the evening
- Maybe he'll even stop for errands along the way

This is a reliable system - but not an ordered one.

Now, if the homeowner wants to receive the packages in a specific order,
he needs an additional mechanism that says:
"wait until all the packages arrive, and then arrange them on the table for me."

That's exactly the combination of:

- **RUD PDC** → brings all the packages
- **UET** → arranges them according to a predefined order

## When Is RUD PDC Used?

In places where:

- Speed matters more than preserving order
- Load can vary
- Messages arrive in large volumes
- Not all messages depend on each other

Examples:

- Distributed systems with thousands of events per second
- High-scale routing systems
- Services that prioritize throughput over latency
- Communication designed for fault tolerance

## Summary

RUD PDC is a communication channel that guarantees two things:

- Every message will arrive - no messages are lost.
- Order is not guaranteed - messages can arrive in any sequence.

And on top of it, you can build layers like UET,
which restore order, determinism, and consistent behavior.

It's fast, efficient, and designed for scenarios where reliability matters -
but preserving order would hurt performance.
