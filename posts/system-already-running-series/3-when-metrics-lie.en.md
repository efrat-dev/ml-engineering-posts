---
language: "en"
title: "When Metrics Lie"
categories:
  - "System Architecture"
tags:
  - "Metrics"
  - "Observability"
series: "When the System Is Already Running"
previousPost: "2-latency-is-organizational-en"
nextPost: "4-deploy-is-a-dangerous-event-en"
slug: "3-when-metrics-lie-en"
---


# When Metrics Lie

After understanding that Latency is a result of decisions and not just code,
the stage arrives where we try "to understand what's happening."

So we open a Dashboard.

And everything looks... fine.

## The Illusion: "If the Graphs Are Green - the System Is Healthy"

Metrics are meant to reassure.
They give a feeling of control:

- Numbers
- Lines
- Averages

And the problem isn't that they're wrong -
it's that they filter reality.

In most systems,
Metrics don't lie consciously.
They just tell a partial story.

## Mean vs. Tail: Where the Truth Hides

The average almost always looks good.

95% of requests go through fast.
99% might still meet the requirements we committed to.

But the system doesn't experience averages.
It experiences edges.

That same 1%:

- Gets stuck
- Generates retries
- Triggers secondary load
- And ignites a chain reaction

The tail is where systems break -
but the average keeps reassuring.

## Why Dashboards Give False Confidence

Dashboards are built to:

- Simplify
- Consolidate
- And present a clean picture

But simplicity comes at a price.

A graph that averages everything:

- Hides variance
- Conceals extreme behavior
- And blurs dangerous patterns

Everything looks "under control" -
until it isn't.

## When Metrics Prevent Action

There's an especially dangerous moment:
when someone says:

"but according to the graphs - everything's fine."

That's the moment when:

- Gut feeling gets pushed aside
- Small anomalies get erased
- And failures start building quietly

Metrics don't just describe reality -
they influence decisions.

And when metrics are reassuring,
people stop worrying -
even when they should.

## When to Look at a Graph, and When to Listen

A stable system knows how to distinguish between two states:

- A graph that confirms existing understanding
- And a graph that replaces judgment

Good Metrics:

- Confirm a suspicion
- Assist an investigation
- Sharpen questions

Dangerous Metrics:

- Close a discussion
- Override intuition
- Give an answer when there's no understanding yet

## An Analogy

Think of a car's dashboard.

Speedometer, fuel, and temperature gauges -
all matter.

But a driver who doesn't listen:

- To noise
- To vibration
- Or to a change in behavior

might keep driving -
until the car suddenly stops.

The gauges didn't lie.
They just didn't tell the whole story.

## The Bottom Line

Metrics are a tool.
Not a substitute for judgment.

Dangerous systems
don't always look red -
sometimes they look too green.

Whoever relies only on metrics -
loses sensitivity.

Whoever combines metrics with understanding,
questions,
and healthy suspicion -
identifies problems early.

## Looking Ahead

And once a problem is already identified,
the next dangerous moment arrives:

changing something in production.

In the next post we'll dive into the question
of why Deploy is one of the most dangerous events
in a system -
and why a small change
isn't small at all.
