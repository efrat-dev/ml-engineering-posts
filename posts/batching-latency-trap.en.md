---
language: "en"
title: "Batching: The Optimization That Destroys Latency If You Don't Understand It"
categories:
  - "System Architecture"
tags:
  - "Batching"
  - "Latency"
slug: "batching-latency-trap-en"
---


# Batching: The Optimization That Destroys Latency If You Don't Understand It

In modern computing systems, especially in the world of Inference, Batching is considered one of the most basic and obvious optimizations. It appears in almost every performance guide, every Benchmark, and every Throughput slide.
But in interactive systems - that exact same Batching can turn from a smart optimization into the main cause of high, unpredictable Latency.

The problem isn't Batching itself.
The problem is the assumption that Throughput and Latency improve together.

## Why Batching Works Great in Benchmarks

Batching bundles several requests into a single processing pass.
Instead of processing one request at a time, the processor or accelerator gets a larger "package" - and utilizes the hardware better.

Under benchmark conditions, things are nearly perfect:

- A steady stream of requests
- No user waiting for a response
- The main metric is requests per second

In that state, Batching:

- Reduces overhead
- Keeps the accelerator continuously busy
- Dramatically increases Throughput

On paper - everything looks perfect.

## Why It Breaks in Interactive Systems

In an interactive system, a request doesn't just "exist" to be added to a statistic.
There's a user waiting behind it.

This is where Batching's hidden cost comes in:
to fill a batch - you have to wait.

The first request that arrives at the batch:

- Isn't processed immediately
- Just sits and waits for others

The larger the batch, the longer the wait grows.
A request's Latency is determined not by computation time, but by accumulation time.

Throughput goes up - but Latency balloons.

## The Tail Forms Even When There's Free Compute Power

This is the part that surprises many systems:
high Latency appears even when there's no load.

The accelerator is idle.
The CPU is bored.
And yet - requests are waiting.

Why?

Because the policy says:
"don't process until the batch is full."

This isn't a performance problem - it's a policy problem.

## An Analogy

Imagine a city bus.

If it waits for every seat to fill before leaving:

- The trip's efficiency is high
- The number of passengers per hour is impressive

But the first passenger:

- Isn't delayed by traffic
- Not by a breakdown
- But by the operating method

Batching works exactly like that.

## Batch Size Isn't a Constant - It's a Systemic Decision

The common mistake is choosing an "optimal" batch size and hardcoding it as a constant.

In a live system:

- Load changes
- Request types change
- Latency sensitivity changes

Batch size needs to be:

- Dynamic
- Load-dependent
- And sometimes - time-dependent, not quantity-dependent

It's a policy, not a number.

## The Bottom Line

Batching is a powerful tool - but a one-sided one.
It increases Throughput at the expense of Latency, not alongside it.

In interactive systems,
the question isn't:
"what's the biggest batch we can run?"

but:
"when am I allowed to wait - and when am I not."

That's exactly where the line runs between a smart optimization
and a system that feels slow, even when it's powerful.
