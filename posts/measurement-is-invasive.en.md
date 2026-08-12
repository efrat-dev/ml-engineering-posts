---
language: "en"
title: "Why Measuring Performance Is Always an Invasive Act"
categories:
  - "System Architecture"
tags:
  - "Observability"
  - "Benchmark"
slug: "measurement-is-invasive-en"
---


# Why Measuring Performance Is Always an Invasive Act

Almost every modern system is measured constantly.
Latency, Throughput, CPU, memory, traces, metrics.

The intuitive assumption is that measurement "sits to the side" -
observing, but not affecting.

In practice, that's never true.

The act of measuring itself changes the system.

## The Overhead of Metrics and Tracing

Every measurement costs something.

Writing a metric:

- Consumes CPU
- Touches memory
- Adds synchronization

Tracing:

- Wraps calls
- Adds allocations
- Lengthens execution paths

In most cases this overhead is small -
but it accumulates, and it isn't uniform.

The irony is that measurement is meant to expose bottlenecks,
but it can itself become one.

## Why a "Clean" Benchmark Is Hard to Achieve

A perfect benchmark assumes a world that doesn't exist:

- No logs
- No metrics
- No traces
- No protective mechanisms

In other words - a different system.

In reality, a production system:

- Is measured
- Is monitored
- Is observed

And so its performance differs from a "sterile" benchmark.

That gap doesn't come from inaccuracy -
it comes from the fact that measurement itself is part of the system.

## An Analogy

Imagine trying to measure flow in a pipe
by attaching sensors, valves, and a pressure gauge.

Every such component:

- Disrupts the flow
- Changes the pressure
- Affects the result

The measurement doesn't lie -
but it isn't neutral either.

## How to Distinguish Useful Measurement from Harmful Measurement

The right question isn't:
"does this add overhead?"

but:
"what value does this measurement return relative to its cost?"

Useful measurement:

- Answers a clear question
- Enables a decision
- Is activated when there's a real need

Harmful measurement:

- Is collected "just in case"
- Isn't actually consumed
- Adds noise and slowdown without insight

More data doesn't necessarily bring you closer to the truth -
sometimes it simply changes it.

## The Bottom Line

Measuring performance isn't an action external to the system.
It's part of it.

A well-designed system
doesn't try to measure everything all the time,
it carefully chooses what to measure - and when.

Because good measurement
doesn't aim to be imperceptible,
it aims to be worth the price it charges.
