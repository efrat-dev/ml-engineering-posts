---
language: "en"
title: "Gradual Rollout: Why \"Gradually\" Isn't Always Safe"
categories:
  - "System Architecture"
tags:
  - "Rollout"
series: "When the System Is Already Running"
previousPost: "4-deploy-is-a-dangerous-event-en"
nextPost: "6-backward-compatibility-en"
slug: "5-gradual-rollout-en"
---


# Gradual Rollout: Why "Gradually" Isn't Always Safe

After understanding that Deploy is a dangerous event,
the instinctive response is to try to soften it.

Don't release all at once.
Don't shock the system.
Do everything gradually.

And this is exactly where a new illusion forms.

## The Illusion: "If It's Gradual - It's Safe"

Gradual rollout sounds responsible:

- A small percentage of users
- Close monitoring
- Ability to stop at any moment

It feels like control.

But in practice,
gradual isn't necessarily gentle -
and sometimes it's more dangerous than a sharp change.

## The Real Problem: Intermediate States

In a Gradual rollout,
the system isn't in the old state
and isn't in the new state.

It's somewhere in between.

And in that state:

- Some components operate under one logic
- Some under another
- And assumptions on both sides are no longer valid

This is a state the system was almost never designed for.

## Asymmetry Is a Quiet Enemy

In a gradual state:

- Different users experience different behavior
- Identical requests get different treatment
- Failures appear only for "some"

And this makes it very hard to:

- Identify problems
- Reproduce failures
- And understand what's actually happening

A failure that isn't uniform
is harder than a total one.

## Why Partial Failure Is Harder Than Total Failure

A total failure is clear:

- Something isn't working
- Everyone is affected
- And there's a trigger for action

A partial failure:

- Looks like noise
- Spreads out
- And sometimes gets dismissed as an "edge case"

But it's more dangerous,
because it can persist for a long time -
and quietly wear down the system.

## Gradual as a Complexity Multiplier

Gradual rollout doesn't just reduce risk -
it also increases complexity:

- You need to support two states
- You need dual logic
- You need more complex monitoring

If the system wasn't built for this in advance,
gradualness becomes a trap.

## An Analogy

Think of crossing a bridge.

**A full closure:**
Clear, sharp, unpleasant -
but everyone knows what's happening.

**A "half-half" opening:**
One lane open, one closed,
unclear signage,
and unexpected load.

A lot of accidents happen exactly there.

## The Right Question

The question isn't:
"should we release gradually?"

It's:

- Does the system know how to live in an intermediate state
- Are intermediate states part of the design
- And what's the cost of asymmetry

Gradual rollout is a tool -
not a guarantee of safety.

## The Bottom Line

A gradual state isn't always cautious.
Sometimes it's just less visible.

Stable systems:

- Choose when a gradual state fits
- And when a sharp change is actually safer

Not because it's gentle -
but because it's clear.

## Looking Ahead

After Deploy,
and after Rollout,
a deeper question remains:

what happens when the system is already using
an interface we promised not to break?

In the next post we'll dive into the longest-standing commitment in engineering:
Backward compatibility -
and why "we'll just add a field"
is sometimes the beginning of a big problem.
