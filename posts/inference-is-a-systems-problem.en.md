---
language: "en"
title: "Why Inference Is a Systems Problem, Not an ML Problem"
categories:
  - "Inference Optimization"
tags:
  - "Systems"
  - "Inference"
previousPost: "underutilized-inference-hardware-en"
nextPost: "inference-cannot-tolerate-ambivalence-en"
slug: "inference-is-a-systems-problem-en"
---


# Why Inference Is a Systems Problem, Not an ML Problem

At some point the model is ready.
It's been trained, tested, and the accuracy looks good.

From there it's easy to think the main work is done.
But the truth is the opposite:

The model is done - the system is just starting.

ML deals with the question:
which function computes the best result.

Inference deals with a completely different question:
how does that function meet the real world.

And the real world is a system.

## Most Inference Problems Don't Happen Inside the Model

They happen:

- Before the data reaches it
- While it's being transferred to it
- And after the result leaves it

Latency, jitter, queues, retries, connections, memory, timing -
all of these determine the experience far more than the model's layers.

This is where the first collision happens
between ML assumptions and infrastructure reality.

## In ML, You Assume

- Available input
- Continuous computation
- Uniform time
- And a stable environment

## In Systems, the Reality Is

- Input arrives in waves
- Computation competes for resources
- Time varies
- And components affect each other

The model might be correct,
but the assumptions around it break.

## Inference Is a Chain, Not a Point

Network → CPU → queues → accelerator → memory → network.

If one of the links:

- Is poorly timed
- Is overloaded
- Or is unpredictable

Performance suffers,
even if the model is perfect.

That's why, in production,
what really determines performance
isn't the model.

It's:

- How requests are collected
- How they're scheduled
- How resources are managed
- And how the system behaves under load

A fast GPU doesn't help
if it's waiting.

An accurate model doesn't help
if the result arrives too late.

## Summary

Successful Inference isn't built on good ML alone,
but on stable systems.

Ones that understand:

- Timing
- Load
- Edge-case failures
- And behavior under pressure

ML determines what to compute.
Systems determine when, how, and whether it even arrives in time.

And in production -
those are the questions that determine everything.
