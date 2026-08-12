---
language: "en"
title: "What Is Communication, Really - And Why a Physical Connection Isn't Enough"
categories:
  - "Communication"
tags:
  - "Communication Fundamentals"
series: "How Computers Talk"
previousPost: "0-introduction-en"
nextPost: "2-what-is-a-protocol-en"
slug: "1-what-is-communication-en"
---


# What Is Communication, Really - And Why a Physical Connection Isn't Enough

Intuitively, it's easy to think of communication as something technical and simple:
there's a sender, a receiver, and a connection between them.
If you connect two computers with a cable - it seems like the problem is solved.

But in practice, that's only the most superficial layer.
A physical connection allows signals to pass, not meaning.

Two computers can be connected to each other,
and still not exchange any useful information at all.

## A Signal Is Not Information

At the lowest level, computers know how to send and receive signals -
electrical changes, pulses, sequences of zeros and ones.

But a signal, by itself, is not information.
For a signal to become information, both sides need to agree in advance on some very basic things:

- What counts as a unit of information?
- Where does it start and where does it end?
- What does each part mean?
- What do you do when something goes wrong?

Without such agreements, the sequence that arrives on the other side is just noise.

## Communication Is Coordinating Expectations

In the deeper sense, communication isn't transmission - it's coordination.
Not "I sent something," but "we sent and understood the same thing."

A computer sending data always makes assumptions:

- At what rate the data will arrive
- In what order
- Whether it's okay to lose parts
- Whether it needs to confirm the other side received it

If the receiving side doesn't share those same assumptions -
communication fails, even if the connection is perfect.

## The First Problem of Distributed Systems

Here a foundational principle emerges that will accompany the entire series:
communication fails not because of a lack of connection -
but because of a lack of agreement.

The failure isn't necessarily dramatic:

- Data arrives late
- Requests are answered partially
- Results look "strange"
- The system doesn't break, but also doesn't behave as expected

And that's the most dangerous kind of failure -
a silent failure.

## An Analogy

Imagine two offices connected by a pipe for passing documents.
The pipe works perfectly.
But one office sends documents without a title, without a page count, and without an agreed-upon order.

The other office receives a pile of papers -
but doesn't know what to do with them.

The problem isn't the pipe.
The problem is the absence of rules.

## The Key Point

Once you understand that communication is, first and foremost, an agreement,
it's easy to understand why you can't "just send data."

You need to define:

- How to send
- In what structure
- What's expected from the other side
- How to handle uncertainty

None of these are minor technical details -
they're the foundation on which protocols are built.

In the next post we'll dive into that exact concept:
what a protocol is - and why giving up freedom is a condition for reliable communication.
