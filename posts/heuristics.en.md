---
language: "en"
title: "What Are Heuristics - and Why Systems Love and Hate Them at the Same Time"
categories:
  - "Development Tools"
tags:
  - "Heuristics"
  - "System Design"
slug: "heuristics-en"
---


# What Are Heuristics - and Why Systems Love and Hate Them at the Same Time

When a system needs to make a decision,
there are two options:

either it knows exactly what's right to do,
or it tells itself:
"this is probably good enough."

Heuristics are the second option.

## What Are Heuristics?

Heuristics are rules of thumb.

Not precise rules,
not full computation,
but decisions like:

- "if it's busy - wait a bit"
- "if it's small - handle it first"
- "if it looks slow - try something else"

They're based on experience,
not certainty.

## Why Use Them?

Because in reality:

- there isn't always time to compute everything
- there isn't always complete information
- and you need to respond fast

So heuristics help a system
keep working even when things aren't clear.

## But Here Comes the Price

Heuristics only work as long as reality behaves the way we expected.

And the moment:

- the load changes
- the input differs
- or the system grows

the rule that "usually works"
starts to surprise you.

The problem with heuristics
isn't that they're wrong.

The problem is that they're:

- unpredictable
- inconsistent
- and hard to explain after the fact

When something breaks,
and the answer is
"it's because the system decided differently this time" -
you don't really have control.

## The Risk in Repetition

Especially in systems that repeat the same operation over and over:

A small decision that sounds reasonable
can turn into a permanent problem.

What worked nicely once
works less nicely a million times.

## Good Systems Try to Be Clear

Not to be clever,
but to be clear.

Not asking every moment
"what's smartest right now?",
but deciding in advance
"how do we always behave."

## The Sentence Worth Remembering

Heuristics are a temporary solution to uncertainty.
Mature systems try to reduce the need for them.

Because in systems,
fewer runtime guesses
mean more stability over time.
