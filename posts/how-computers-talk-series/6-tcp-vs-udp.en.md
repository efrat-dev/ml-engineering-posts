---
language: "en"
title: "TCP vs UDP - Reliability or Speed"
categories:
  - "Communication"
tags:
  - "TCP"
  - "UDP"
series: "How Computers Talk"
previousPost: "5-what-is-a-packet-en"
nextPost: "7-what-is-connection-en"
slug: "6-tcp-vs-udp-en"
---


# TCP vs UDP - Reliability or Speed

After information is sent as Packets,
an unavoidable problem emerges:
not every Packet arrives, and not always in the order it was sent.

This is where a fundamental question arises, not a technical one:
what matters more - knowing everything arrived,
or getting a response as fast as possible?

There isn't one answer.
And that's why there are two different protocols.

## A Problem With No Perfect Solution

On a real network:

- Packets can get lost
- Arrive late
- Or arrive in a different order

You can try to "fix" this,
or you can choose to ignore some of the problems.

But you can't do both fully.

Any attempt to guarantee full reliability
costs time, resources, and patience.

## TCP: Choosing Reliability

TCP was built on one clear assumption:
better to wait - than to be wrong.

It adds mechanisms to communication aimed at:

- Making sure every Packet arrived
- Preserving order
- And resending whatever was lost

The systemic implication is:

- More coordination
- More waiting
- And fewer surprises

TCP isn't fast -
it's predictable.

## UDP: Choosing Speed

UDP makes the opposite decision:
it doesn't try to fix the network.

Packets get sent,
and whatever arrives - arrives.

No checks,
no confirmations,
and no attempt to fill in what's missing.

The result:

- Low Latency
- Simple behavior
- And zero guarantees

UDP isn't reliable -
but it's consistent in its speed.

## This Isn't a Technological Choice - It's a Value Judgment

The difference between TCP and UDP isn't "which one's better."
It's a question of priority.

There are situations where:

A missing Packet is a disaster

And there are situations where:

A small delay is a disaster

TCP fits information that must be correct.
UDP fits information that must be on time.

## An Analogy

Think of shipping documents.

TCP is like registered mail:
every document is checked, signed, and confirmed.

UDP is like a note dropped in a mailbox:
no confirmation,
but it arrives fast.

Which method is better?
It depends on what's written in the document.

## The Choice Affects the Entire System

Once you choose TCP or UDP,
a way of thinking gets imposed:

- How you handle delays
- How you handle gaps
- And who's responsible for fixing mistakes

The protocol isn't just a pipe -
it determines who's responsible for what.

## Looking Ahead

Once you introduce reliability, or give it up,
another, deeper concept emerges:
what a "connection" between computers actually is.

In the next post we'll cover the Connection -
and why it's a logical state, not a cable.
