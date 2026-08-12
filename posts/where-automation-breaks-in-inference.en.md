---
language: "en"
title: "Why Inference Is Where Automation Breaks"
categories:
  - "Inference Optimization"
tags:
  - "Inference"
  - "Automation"
previousPost: "inference-reveals-priorities-en"
slug: "where-automation-breaks-in-inference-en"
---


# Why Inference Is Where Automation Breaks

Automation is almost always perceived as an absolute good.
Less human touch, faster response, more "intelligence" in the system.

But in Inference specifically,
full automation isn't a goal -
it's a risk.

Inference is where you need to know
when not to automate.

## Why Is Automation So Tempting?

Because Inference lives on graphs and metrics:

- Latency
- Load
- Request rate
- Resource utilization

And when there are numbers, the temptation is obvious:
if the metric goes up - we'll react.
If it goes down - we'll adjust.
If there's load - we'll add resources.

On paper, this looks perfect.

## Automations That React Too Fast

The problem starts when automation reacts before the system has had a chance to settle.

Inference is a system with inertia:

- Queues don't drain immediately
- Load doesn't disappear instantly
- One change affects others

Automation that reacts too fast:

- Sees a momentary fluctuation
- Interprets it as a problem
- And makes a change that amplifies the fluctuation

Instead of stabilization -
you get volatility.

## Why Can Auto-Scaling Cause Harm?

Auto-scaling is based on a simple assumption:
more load → more resources → solution.

But in Inference, load isn't always a capacity problem.

Sometimes it stems from:

- Incorrect processing order
- Head-of-line blocking
- A small delay that accumulated
- Or an internal rate change

In such situations, adding resources:

- Doesn't solve the problem
- Obscures the source
- And adds new complexity

The system "grows" -
but doesn't improve.

## Automation vs. Systemic Understanding

Good automation knows how to execute decisions that have already been well defined.
Inference sometimes requires decisions that haven't been defined yet.

For example:

- Did latency rise because of real load, or because of an order change?
- Should we increase batch size, or actually decrease it?
- Is this a transient event, or a pattern change?

These are contextual questions.
There's no universal rule for them.

When automation receives them -
it's forced to guess.

## An Analogy: An Oversensitive Thermostat

Imagine a thermostat that reacts to every tiny temperature change.
Half a degree - heating.
Another half - cooling.

The result:
the system is constantly working,
but the temperature is never stable.

## The Limits of Automatic Adjustment

Good Inference doesn't give up automation -
it sets boundaries for it.

For example:

- Automation within narrow ranges
- Limited rates of change
- A deliberate delay before reacting
- And points where human judgment is required

The goal isn't to control everything automatically,
but to prevent overreaction.

## Conclusion

Inference is where it becomes clear
that not everything needs to be automatic.

Sometimes, the ability to stop,
observe,
and not react immediately -

is exactly what keeps the system stable.

And in stable engineering,
not acting
is also a decision.
