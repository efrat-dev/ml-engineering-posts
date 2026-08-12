---
language: "en"
title: "Over-Engineering and Under-Engineering: Two Sides of the Same Mistake"
categories:
  - "System Architecture"
tags:
  - "Over-Engineering"
series: "When the System Is Already Running"
previousPost: "9-good-enough-engineering-en"
nextPost: "11-mature-engineers-dont-seek-control-en"
slug: "10-over-and-under-engineering-en"
---


# Over-Engineering and Under-Engineering: Two Sides of the Same Mistake

After talking about Good Enough Engineering
and the ability to stop in time,
one especially common mistake remains:

stopping too early -
or too late.

## The Illusion: "There's One Correct Solution"

It's common to think that:

- Over-engineering comes from a lack of experience
- Under-engineering is negligence

But in practice,
both are born from the same mistaken assumption:

that there's an "absolutely correct" solution,
disconnected from context.

## Over-Engineering: Fear Disguised as Excellence

Over-engineering doesn't come from too much knowledge -
it comes from fear.

Fear of:

- Future failures
- Criticism
- Or the question "why didn't you think of that?"

The result:
a solution that tries to cover everything.

Another layer.
Another abstraction.
Another edge case.

But:

- It's hard to understand
- It's hard to change
- And it's hard to stop during a failure

The system might be "impressive" -
but it's fragile.

## Under-Engineering: False Confidence Disguised as Simplicity

Under-engineering isn't always laziness.
Sometimes it's excessive confidence.

The belief that:

- "We'll figure it out when we get there"
- "It probably won't happen"
- "If there's a problem - we'll add it later"

The result:
a solution with no margins.

There's no:

- Room for mistakes
- Room for load
- Room for change

And when reality deviates slightly from expectations -
the system breaks immediately.

## The Shared Mistake

Over-engineering and Under-engineering
look opposite,
but both ignore the same thing:

context.

They don't ask:

- Who will maintain this?
- How will it behave in production?
- What's the cost of a change?
- And where's the real risk?

In both cases,
the solution is built from an assumption -
not from reality.

## Mature Engineering Is Calibration, Not an Extreme

Stable engineering isn't:

- The simplest
- Nor the most sophisticated

It's calibrated.

It asks:

- What's the dominant risk right now?
- What's the cost of a mistake?
- And where is it better to leave deliberate incompleteness?

This isn't a compromise.
It's control over context.

## Early Warning Signs

You can spot an extreme fairly early.

**Over-engineering** feels like:

- A solution that's hard to explain
- Code no one "touches"
- A system you can't change without fear

**Under-engineering** feels like:

- A system with no Plan B
- A solution that only works "under good conditions"
- Dependence on a routine that doesn't really exist

Both are dangerous -
for different reasons.

## The Bottom Line

The problem isn't whether a solution is "simple" or "complex."
The problem is whether it fits the reality it lives in.

Over-engineering and Under-engineering
are two ways of avoiding the real question:

what does this system actually need - right now?

## Looking Toward the Series' Close

After seeing:

- How Production exposes truth
- How Latency, change, and organization intertwine
- And what engineering stability looks like in practice

it remains to sum it all up
in one clear sentence.

The closing post covers this:

why responsible engineers
don't seek control over a system -
they create conditions
under which it doesn't spiral out of control.
