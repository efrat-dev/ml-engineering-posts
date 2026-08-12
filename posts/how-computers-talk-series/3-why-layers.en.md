---
language: "en"
title: "Why Do We Need Layers in Communication - And Why a \"One Solution for Everything\" Fails"
categories:
  - "Communication"
tags:
  - "Communication Layers"
series: "How Computers Talk"
previousPost: "2-what-is-a-protocol-en"
nextPost: "4-address-is-not-location-en"
slug: "3-why-layers-en"
---


# Why Do We Need Layers in Communication - And Why a "One Solution for Everything" Fails

After understanding that communication relies on protocols,
an almost natural question arises:
if we're already agreeing on rules, why not agree on one single set of rules that does everything?

Why split it up?
Why complicate things?
Why build layers?

The answer isn't historical or technological -
it's about systems design.

## The Problem With One Big Solution

Suppose you try to build a single protocol that handles everything:

- Sending data
- Reliability
- Order
- Identifying the parties
- Handling failures
- Adapting to different hardware
- Adapting to different applications

On paper, this sounds efficient.
In practice, it creates a system that can't be changed.

Every small change -
in network speed, hardware type, or application needs -
requires changing the entire protocol.

The result is a fragile system:

- Hard to understand
- Hard to test
- Very hard to develop over time

## Layers Are a Way to Control Complexity

Layers aren't a technical solution -
they're an engineering decision about dividing responsibility.

Instead of one mechanism handling everything,
each layer gets a defined area of responsibility:

- One layer is responsible for transmitting signals
- Another is responsible for order and reliability
- Another is responsible for the meaning of the data

Each layer assumes the layer below it "does its job,"
and provides a clear service to the layer above it.

This builds a system where:

- Every part is simpler
- You can change one layer without breaking all of them
- You can understand failures based on where they occur

## Layers Create Clear Boundaries

A boundary is a good thing in systems.

When layers are well defined:

- A physical problem doesn't "climb" into the logical layer
- A change in the application doesn't require a change in the infrastructure
- Every component knows what's expected of it - and what isn't

Without layers, every component would need to know everything.
And that's an assumption that doesn't hold over time.

## An Analogy

Think of a multi-story office building.

There's no single system that does everything:

- There's electricity
- There's water
- There are elevators
- There are offices

Each system is relatively independent,
but they all work together.

No one expects the water system to know who works in which office,
or the electrical system to understand what meetings are about.

That separation is what allows the building to function.

## Layers as a Recurring Principle in Tech

Once you recognize the layering principle in communication,
it's easy to spot it everywhere:

- Operating systems
- Service architecture
- Inference systems
- And even team organization

Layers don't add complexity -
they prevent it from spreading.

## Looking Ahead

Now that the idea of layers is clear,
we can start talking about what's inside them.

In the next post we'll start from the most basic thing:
how a computer identifies another computer -
and why an "address" on a network isn't a physical location at all.
