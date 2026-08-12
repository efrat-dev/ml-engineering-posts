---
language: "en"
title: "What Is an Event (and What It Isn't)"
categories:
  - "System Architecture"
tags:
  - "Event-Driven"
  - "Events"
series: "Event-Driven Systems"
nextPost: "2-polling-vs-event-en"
slug: "1-what-is-an-event-en"
---


# What Is an Event (and What It Isn't)

The word Event sounds simple:
something happened.

But in software systems, it's one of the most confusing words -
because it describes an abstract idea, not a technical action.

To understand Event-driven systems, you first need to understand why something is even called an "event."

## An Event Is a Description of a Change, Not an Action

An Event isn't an action the system performs,
and isn't a request that needs to be handled.

An Event is a description of a fact that occurred:
something changed in the system's state.

For example:

- An order was created
- A payment was completed
- A file was updated
- A sensor crossed a threshold

The system doesn't "perform" an Event -
it declares it.

## What an Event Doesn't Say

An Event doesn't say:

- That someone has already handled it
- That anyone will handle it at all
- That it just happened now
- That it matters to anyone specific

It's also not a command:
not "do X,"
but "X happened."

This difference is critical, because it separates:
knowledge from response.

## Event vs. Request

A Request asks:
"do something for me."

An Event says:
"something already happened, do with it whatever you want."

A Request creates dependency:
whoever asks expects a result.

An Event breaks dependency:
whoever listens decides on their own whether they care.

## An Event Without Context Is Noise

Not every change deserves to be an Event.

If every small change generates an Event:

- The system gets flooded
- It's hard to distinguish what matters from what doesn't
- And Latency grows without real value

A good Event is:

- Meaningful at the system level
- Semantically stable
- The kind more than one component would plausibly want to know about

An Event is a design choice, not an automatic byproduct.

## An Analogy

Imagine a bulletin board.

An Event is a note that says:
"the door closed."

It doesn't say:

- Who needs to open it
- When
- Or whether anyone needs to act at all

Everyone who reads the note -
decides on their own whether it's relevant to them.

## The Bottom Line

An Event isn't "something that happened in code."
It's a declaration about a reality that changed.

Event-driven systems aren't built around actions -
they're built around facts.

Once you understand that,
you can start talking about how facts move through a system.
