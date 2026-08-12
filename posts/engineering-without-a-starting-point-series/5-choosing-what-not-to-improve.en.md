---
language: "en"
title: "Choosing What Not to Improve"
categories:
  - "System Architecture"
tags:
  - "Bottlenecks"
series: "Engineering Without a Starting Point"
previousPost: "4-refactoring-without-stopping-the-world-en"
nextPost: "6-leading-without-authority-en"
slug: "5-choosing-what-not-to-improve-en"
---


# Choosing What Not to Improve

In an existing system,
the real problem isn't a shortage of ideas for improvement -
it's a surplus.

There's always something to optimize.
There's always something to clean up.
And there's always something that "obviously needs attention."

But no system allows you to address everything.

## The Illusion: If We Improve Enough, Everything Will Work Out

It's easy to believe that:

- One more small optimization will reduce load
- One more Refactor will improve stability
- And one more performance improvement will resolve user complaints

But in practice,
improvements don't accumulate in a straight line.

Some of them:

- Cancel each other out
- Move the problem elsewhere
- Or create entirely new complexity

A system doesn't improve from every improvement -
it improves from the right improvements.

## How to Identify the Real Bottleneck

A real bottleneck isn't necessarily the slowest place,
or the ugliest code.

Sometimes it's the place where:

- A small change drags along the most dependencies
- One decision affects many components
- Or where the most decisions get made under pressure

This is the place where one improvement
can change an entire behavior pattern.

## Why Local Improvements Are Confusing

A local improvement looks tempting:

- It's measurable
- It's under one team's control
- And it gives a feeling of progress

But a live system is a connected system.

An improvement in one area can:

- Increase load in another area
- Change rates
- Or trigger mechanisms not designed to work together

And then, even though everything is "faster" -
the system is less stable.

## When to Deliberately Leave a Non-Optimal Problem

There are problems better left unsolved right now.

Not because they're unimportant -
but because their cost is known,
and the cost of change isn't.

For example:

- Code that isn't pretty but is stable
- A slow but predictable mechanism
- A workaround the whole team knows

In such situations,
leaving a non-optimal problem
is a conscious decision -
not neglect.

## The Bottom Line

Stable engineering doesn't ask:
"what else can we improve?"

It asks:
"which problem won't we address right now - and why?"

That choice is hard,
because it requires giving something up.

But the right kind of giving up
is one of the most powerful tools
in a system with no starting point.

## Looking Ahead

It's hard to choose what not to improve -
but it's even harder to have influence when you have no formal authority.

In the next post we'll cover the question:
how engineers lead change
even without a title.
