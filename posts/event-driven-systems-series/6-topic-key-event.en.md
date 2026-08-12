---
language: "en"
title: "Event, Topic, and Key: Three Concepts You Shouldn't Mix Up"
categories:
  - "System Architecture"
tags:
  - "Event-Driven"
  - "Topic"
series: "Event-Driven Systems"
previousPost: "5-serialization-cost-en"
slug: "6-topic-key-event-en"
---


# Event, Topic, and Key: Three Concepts You Shouldn't Mix Up

When talking about Event-driven systems,
three concepts keep coming up:

Event
Topic
Key

They sound close, sometimes even synonymous -
but they represent three completely different things.

Without this distinction, it's hard to understand how systems actually work.

## Event: What Happened

An Event is a declaration of a fact that happened in the system.

Not a request.
Not a command.
Not "do this."

But:
something already happened.

For example:

- An order was created
- A payment was completed
- A user was updated

An Event describes a change in the system's reality.
It doesn't say what needs to happen now -
it just announces that something happened.

## Topic: What It's About

A Topic is a category that Events of the same kind are associated with.

You can think of it as:
"what subject is this event about?"

For example:

- order.created
- payment.completed
- user.updated

A Topic isn't a single event -
it's a name that groups all events of that kind.

If an Event is a sentence,
a Topic is the sentence's subject.

## Key: Who or What It Belongs To

A Key is an identifier that links an Event to a specific entity.

For example:

- An order ID
- A user ID
- An account ID

Going back to the example:

- Event: an order was created
- Topic: order.created
- Key: order_id = 123

The Key says:
this event belongs to a specific order, not just "some order."

## Putting the Three Together

The same Event will always look like this, conceptually:

- What happened? → Event
- What's it about? → Topic
- What entity is it tied to? → Key

## The Bottom Line

Event, Topic, and Key aren't technical details.
They're a way of thinking about information in a system.

Event says what happened.
Topic says what it's about.
Key says who or what it belongs to.

Once this trio sits clearly in your head,
you can finally ask the next question:

how does the system use this to decide where the event goes?

And that's exactly the point where Routing begins.
