---
language: "en"
title: "Stateless Doesn't Mean There's No State - It's About Where It Lives"
categories:
  - "Communication"
tags:
  - "State"
  - "Stateless"
series: "When Communication Breaks"
previousPost: "10-rpc-messaging-streaming-en"
nextPost: "12-communication-reflects-culture-en"
slug: "11-stateless-and-state-en"
---


# Stateless Doesn't Mean There's No State - It's About Where It Lives

Before we can talk about Stateless,
we need to pause and define the basic concept everything starts from:
State.

## What State Is in a System

State is any information a system keeps
that affects how it behaves going forward.

In simple terms:
what the system remembers.

This can be:

- Who the user is
- What happened before
- What stage a process is at
- What the current value of a variable or resource is

If two identical requests
get handled differently
because of something that happened in the past -
there's State.

## So What Is Stateless

A Stateless system is one where
every request is handled on its own.

The server:

- Doesn't keep memory of previous requests
- Doesn't hold context between calls
- And treats every request as if it were the first

All the information needed for processing:

- Arrives with the request itself
- Or is fetched from an external location (e.g., a database)

It's important to be precise:
Stateless doesn't mean there's no State at all.
It means the State isn't inside the service itself.

## Why the Concept Is Confusing

The word "Stateless" sounds like:

- There's no memory
- There's no complexity
- Everything is simple

But that's an illusion.

State always exists.
The only question is:
where it lives, and who pays the price for it.

## The Myth: Stateless = No State

Here's where the common mistake comes in.

There's no system without State.

There are only systems that choose:

- To hold State inside the service
- Or to push it outward

Stateless isn't the elimination of State -
it's relocating it.

## State at the Edge

When State lives at the edge:

- The client holds the context
- Every request includes all the necessary information
- And the server stays relatively "dumb"

The advantage:

- Simple scale
- Replaceable servers
- Fast recovery

The cost:

- More complex clients
- Heavier requests
- And difficulty managing changes and backward compatibility

The complexity hasn't disappeared -
it just moved to the edge.

## State in the Middle

When State lives in the middle:

- The service remembers
- Holds context
- And makes decisions based on the past

The advantage:

- Rich logic
- Concentrated responsibility
- And fewer demands on the client

The cost:

- Complicated scale
- Slow recovery
- And dependency between requests

State in the middle creates a center of gravity:
hard to move, hard to replicate, and hard to recover.

## State Explosion

As a system grows:

- More users
- More processes
- More edge cases

State multiplies.

State explosion doesn't happen all at once.
It builds slowly, through sentences like:

- "We'll just keep one more detail"
- "This will help next time"
- "It's a shame to recompute it"

And at some point,
no one knows anymore:

- Which State is critical
- Which is temporary
- And which is dangerous

## Stateless as a Conscious Choice

A stable system doesn't declare:
"we're Stateless."

It asks:

- What State must exist
- Where is the best place to hold it
- And where will it cause the least damage

Stateless isn't an ideological destination.
It's an architectural tool.

## An Analogy

Think of a service counter.

A counter that remembers nothing -
asks every customer to explain everything again.

A counter that remembers too much -
gets stuck in the past,
and struggles to serve quickly.

The question isn't:
to remember or not to remember -

but:
what,
where,
and for how long.

## The Bottom Line

State is unavoidable.
Stateless doesn't eliminate it.

It's a choice:

- Where the State lives
- Who carries the complexity
- And how the system behaves under load and failure

Systems that break
aren't holding "too much State" -
they're holding it
in the wrong place.

## Looking Ahead

After talking about:
uncertainty, load, rejection, queues, order, duplicates,
and where State lives -

we can ask a broader question:

what does all of this say about our engineering culture?

In the next post we'll examine
how communication decisions reflect the deep values of teams and systems -
and why communication isn't just a mechanism,
it's a mirror.
