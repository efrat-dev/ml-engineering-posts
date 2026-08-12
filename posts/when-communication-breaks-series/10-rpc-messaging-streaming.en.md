---
language: "en"
title: "RPC, Messaging, Streaming - Three Communication Philosophies"
categories:
  - "Communication"
tags:
  - "RPC"
  - "Messaging"
series: "When Communication Breaks"
previousPost: "9-consistency-vs-availability-en"
nextPost: "11-stateless-and-state-en"
slug: "10-rpc-messaging-streaming-en"
---


# RPC, Messaging, Streaming - Three Communication Philosophies

After understanding that Consistency and Availability are daily choices,
we can widen the view outward:

how do you even choose how systems talk to each other?

This is where three common approaches appear:
RPC, Messaging, and Streaming.

They're usually presented as different tools.
In practice - they're three completely different philosophies of communication.

## RPC - Talking as if Everything Is Local

RPC (Remote Procedure Call) is built on a simple idea:
I'm calling a function -
it just happens to run somewhere else.

From the code's perspective:

- There's a call
- There's a response
- And there's an expectation of synchronization

This is communication that looks clean, direct, and convenient.

But it relies on a heavy assumption:
that the other side is available right now.

## The Cost of RPC

RPC creates strong coupling:

- The sender waits
- The receiver must respond
- And every delay becomes an immediate problem

Latency becomes part of the control flow.
Timeout becomes logic.
And a small failure on one side -
is felt immediately on the other.

RPC fits when:

- Getting an immediate answer matters
- And the relationship between the parties is tight

It's dangerous when:

- There's load
- There's instability
- Or when broad scale is needed

## Messaging - Send and Release

Messaging is based on a different idea:
you don't talk -
you send a message.

The sender:

- Sends
- And moves on

The receiver:

- Handles it when it can
- At its own pace

Communication becomes asynchronous,
and the coupling between the parties weakens.

## The Cost of Messaging

Messaging buys you:

- Resilience
- Flexibility
- And the ability to absorb load

But it requires:

- Designing for unknown Latency
- Dealing with duplicates
- And thinking about order and consistency

There's no "immediate answer."
There's a flow of events.

Messaging fits when:

- An immediate response isn't required
- Decoupling components matters
- And load is part of the routine

## Streaming - Thinking in Flow, Not Operations

Streaming changes the perspective entirely.

Not:
"I sent a request"
and not:
"I sent a message"

but rather:
there's a continuous stream of events.

The system doesn't respond to a single action -
it listens to the flow.

## The Cost and Power of Streaming

Streaming excels at:

- Large volumes of data
- Continuous processing
- And analysis over time

But it requires:

- A completely different way of thinking
- Managing State across a stream
- And dealing with out-of-order processing

This isn't "more Messaging."
It's a different philosophy.

## Synchronous vs. Asynchronous - Not a Technical Matter

RPC, Messaging, and Streaming
differ first and foremost on one question:

does the sender wait -
or release?

This choice affects:

- Latency
- Load
- Reliability
- And how the team thinks

This isn't a library decision.
It's a systems decision.

## Coupling vs. Decoupling

RPC creates strong coupling:
both sides depend on each other in real time.

Messaging and Streaming
enable decoupling:
each side progresses at its own pace.

Decoupling isn't free:
it requires design,
but it buys operational freedom.

## An Analogy

You can think of:

- RPC as a phone call - both sides must be available
- Messaging as mail - you send and move on
- Streaming as radio - you listen to a continuous stream

Three forms of communication,
three different expectations.

## The Bottom Line

The choice between RPC, Messaging, and Streaming
isn't technological.

It's fundamental:

- How the system experiences time
- How it responds to failure
- And how it handles load

A wrong choice here
won't be fixed by optimization.

## Looking Ahead

After choosing how systems talk,
an equally deep question remains:

where does the State live?

In the next post we'll examine why
"Stateless" doesn't mean there's no State -
but a conscious decision about where it lives,
and what price gets paid for each choice.
