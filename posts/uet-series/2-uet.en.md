---
language: "en"
title: "What Is UET, Really - And Why Can't Communication Systems Work Without It?"
categories:
  - "Communication"
tags:
  - "UET"
  - "RUD PDC"
series: "UET Series"
previousPost: "1-rud-pdc-en"
nextPost: "3-uet-ordering-en"
slug: "2-uet-en"
---


# What Is UET, Really - And Why Can't Communication Systems Work Without It?

In modern systems, different components need to pass messages between each other:
processes, modules, services, hardware, and software.
On the surface - "send a message, receive a message, what's the problem?"

But in real systems, things get complicated:

- Messages don't always arrive in order
- Sometimes there's load
- Sometimes a message gets delayed
- Sometimes several messages compete for the same channel
- And sometimes order is critical - because every action depends on the one before it

As we saw in the previous post, RUD PDC guarantees that messages will arrive - but doesn't guarantee order.
This is where UET comes in.

## What Is UET?

UET - Unified Endpoint Transport
is an infrastructure layer that defines, in a unified way:

- How messages are sent
- How messages are received
- How order is guaranteed
- How invalid states are handled
- How different types of communication are reconciled

In other words:
UET is a set of rules that dictates how components in a system talk to each other in an organized way.

It doesn't replace a network protocol -
it sits on top of it and ensures the behavior is uniform and stable.

## Why Is UET Even Needed?

Without UET, every component writes its own logic:

- One sends messages asynchronously
- Another requires order
- A third blocks on reads
- A fourth arrives without tags

The whole system turns into a collection of "private rules" that don't fit together.

With UET:

- All components work according to the same mental model
- There's a shared language
- Communication behavior is predictable
- And most importantly - you can trust that the system functions correctly even under load or disorder

## What Does UET Actually Solve?

- Message ordering
- What happens when pressure rises (backpressure)
- What happens when there are errors
- When a message is considered "received"
- How communication behaves when transitioning between states

This is a "rules" layer that defines how things should behave.

In the next post, we'll dive into one of UET's central mechanisms: how it guarantees message order on top of RUD PDC.
