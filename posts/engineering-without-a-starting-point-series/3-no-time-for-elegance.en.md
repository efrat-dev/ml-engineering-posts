---
language: "en"
title: "When There's No Time for Elegance"
categories:
  - "System Architecture"
tags:
  - "Technical Debt"
series: "Engineering Without a Starting Point"
previousPost: "2-escalation-as-a-tool-en"
nextPost: "4-refactoring-without-stopping-the-world-en"
slug: "3-no-time-for-elegance-en"
---


# When There's No Time for Elegance

There are moments in a live system
when the question isn't
"what's the most correct solution?"
but
"what's the thing that will work right now, without breaking everything?"

These moments aren't rare.
They happen during an incident, during load, during a change.
And exactly there -
elegance becomes a luxury.

## The Illusion: There's Always Time to Do It "Nicely"

In engineering we're trained to ask:

- Is this clean?
- Is this architecturally correct?
- Is this scalable?
- Is this future-proof?

But in the reality of a running system,
there isn't always time to ask all these questions.

Sometimes:

- Users are being hurt right now
- The system is bleeding right now
- And the decision needs to be made before there's certainty

In such situations,
searching for a "beautiful" solution
is sometimes the surest way to be late.

## Real-Time Trade-offs

When there's no time, the real choice is between bad and worse -
not between good and perfect.

For example:

- A simple solution that creates known debt vs. a complex solution that might fail
- A targeted change that violates an internal rule vs. a broad change that risks stability
- A temporary bypass of a mechanism vs. a rewrite that will take weeks

These aren't comfortable choices.
But they're unavoidable.

The mistake is thinking you can avoid them.

## Why "Ugly" Solutions Survive

Solutions that look ugly on paper
survive in production for one simple reason:

they align with reality.

They:

- Limit the damage area
- Require little coordination
- And work with what exists - not with what we'd want to exist

Not because they're ideal,
but because they're possible.

## Conscious Technical Debt vs. Accidental Debt

There's a critical difference between two kinds of debt:

**Accidental technical debt**
Created when you do something quickly without understanding the price.
Without knowing what breaks,
and without knowing how to go back.

**Conscious technical debt**
Created when you make a deliberate trade-off.
With a clear understanding:

- What the price is
- Where it lies
- And when we'll need to pay it

Under pressure,
the goal isn't to avoid debt -
it's to choose the right debt.

## The Bottom Line

In a live system,
elegance isn't always a virtue.

Sometimes,
the most stable engineering
is knowing when to give it up -
and choosing a solution that works,
even if it's unpleasant to look at.

Not because that's what we wanted to build,
but because that's what reality allows right now.

## Looking Ahead

In the next post we'll cover the question:

how do you do Refactoring
when you can't hit pause.
