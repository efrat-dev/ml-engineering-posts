---
language: "en"
title: "What Is a Computer on a Network - And Why an Address Isn't a Location"
categories:
  - "Communication"
tags:
  - "Network Addresses"
series: "How Computers Talk"
previousPost: "3-why-layers-en"
nextPost: "5-what-is-a-packet-en"
slug: "4-address-is-not-location-en"
---


# What Is a Computer on a Network - And Why an Address Isn't a Location

After understanding why communication is built from layers,
we can ask another basic question:
for a computer to talk to another computer - how does it even know who it's talking to?

The natural intuition is to think in terms of location:
"the computer over there," "this server," "that machine."

But on a network, physical location is almost irrelevant.
What matters is identity.

## A Computer on a Network Is a Logical Entity

A computer on a network isn't "a box in a specific place."
It's a logical endpoint that can:

- Send information
- Receive information
- Respond according to agreed-upon rules

It can move, change, be replaced -
and communication will still keep working, as long as the identity is preserved.

That's why a computer can:

- Move to a different server
- Move to a different network
- Or even be completely replaced

and still be perceived as "the same" party in the communication.

## What an Address Really Is

An address on a network doesn't describe a physical location.
It's a label.

Its job is simple:
to let information reach the right destination inside a complex system.

The address says:
"here is the party the message is intended for" -
not "where the computer is located in the world."

This is a critical distinction:
in large networks, the ability to decouple identity from location is a prerequisite for scale.

## Why You Can't Rely on Location

Modern systems are constantly changing:

- Computers come and go
- Load shifts
- Infrastructure gets replaced

If communication depended on a fixed physical location,
every such change would break the system.

Instead, the network treats computers as replaceable entities,
and relies on logical addresses to route information.

## An Analogy

Think of an internal mail system in a large organization.

An envelope isn't sent based on the employee's physical location,
but based on their name or role.

The employee can move rooms, floors, or buildings -
and the mail will still reach them,
as long as the routing system knows how to update the link between the name and the location.

That's exactly how a network works.

## An Address as a Promise, Not a Commitment

An address doesn't guarantee:

- That the computer is available
- That the response will be fast
- Or that the content will be received

It only guarantees one thing:
that there's a way to try to reach the destination.

Everything else - reliability, order, response times -
is handled by other layers.

## Looking Ahead

Once you understand that a computer on a network is a logical identity,
the next stage emerges:
how information finds its way among many identities,
and why it's almost never sent as a single unit.

In the next post we'll cover the Packet -
the fundamental unit of modern communication.
