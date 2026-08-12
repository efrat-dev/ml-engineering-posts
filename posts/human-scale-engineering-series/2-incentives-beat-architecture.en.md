---
language: "en"
title: "Incentives Are Stronger Than Architecture"
categories:
  - "System Architecture"
tags:
  - "Incentives"
series: "Human-Scale Engineering"
previousPost: "1-the-org-writes-code-en"
nextPost: "3-ownership-double-edged-sword-en"
slug: "2-incentives-beat-architecture-en"
---


# Incentives Are Stronger Than Architecture

There's a deep belief in engineering:
that if we organize the code correctly -
the system will behave correctly.

But in real systems,
the code isn't the strongest force at play.

The incentives are.

## The Illusion: "If the Architecture Is Good, Behavior Will Sort Itself Out"

When a system behaves in an unwanted way,
the engineering instinct is to ask:

- Where did the design fail
- What abstraction is missing
- And where do we need to refactor

But often,
the system is doing exactly what it was made to do.

Not through the code -
but through what gets measured, rewarded, and punished.

## KPIs vs. Systemic Stability

Most teams don't wake up in the morning to break a system.
They wake up to hit their targets.

And when targets are defined as:

- Average response time
- Number of features per quarter
- Meeting a local SLA

the system starts warping around them.

For example:

A team is measured on the latency of their service.
The easy way to hit the target is to:

- Shorten timeouts
- Return an aggressive fallback
- And push responsibility onto another service

The KPI looks good.
The overall system - less so.

Not because of bad code.
Because of local measurement that rewards global damage.

## Why Teams "Do the Wrong Thing Perfectly"

When the incentive is clear,
people get creative.

Not in creating solutions -
in creating compliance with metrics.

This is how familiar patterns emerge:

- Solutions that shift load instead of solving it
- Caches that hide problems instead of addressing them
- Code that makes things harder for others, but "that's not our problem"

This isn't negligence.
It's optimization.

Just not toward the goal the system actually needs.

## When a Good Metric Becomes Harmful

Every metric is a hidden assumption about what matters.

It becomes dangerous when:

- It's measured without context
- It belongs to one team but affects others
- And it stays fixed even as the system changes

At that point,
the metric no longer reflects reality -
it produces it.

And the architecture will bend accordingly.

## The Bottom Line

Systems don't behave according to the diagrams.
They behave according to the incentives.

Whoever tries to "fix architecture"
without asking:

- What gets rewarded here
- What gets punished
- And what simply isn't visible

will find that the code improves -
and the system doesn't.

## Looking Ahead

If incentives dictate behavior,
who's actually responsible for the system?

In the next post we'll touch on a concept that feels protective -
but sometimes creates the most severe risks:

Ownership.
