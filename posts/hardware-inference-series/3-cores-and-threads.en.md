---
language: "en"
title: "What are Cores and Threads?"
categories:
  - "Hardware"
tags:
  - "Cores"
  - "Threads"
series: "Hardware Inference Optimization"
previousPost: "2-numa-inference-en"
nextPost: "4-cache-importance-en"
slug: "3-cores-and-threads-en"
---


# What are Cores and Threads?

When we hear that “a computer has dozens of cores,” it sounds like immense power - but what does it actually mean?

## Core

A core is the basic processing unit in a CPU.
Each core can run an independent computation - meaning it can process one task at a time.

Modern computers have multiple cores, allowing them to run several tasks in parallel - for example:

- One core calculates the inference of a model,
- While another core handles data input,
- And another aggregates results.

This creates parallelism - multiple computations happening simultaneously.

## What is a Thread?

A thread is a “sub-process” - an even smaller unit than a core.
Each core can typically run several threads simultaneously (thanks to a technology called Hyper-Threading).

However, this doesn’t mean the reality is perfect.
If two threads share the same core, they compete for the same resources, so you don’t always get double the performance.

## Bottom Line

- **Core** = Physical computing power.
- **Thread** = A logical work unit managed on the same core.

The smarter tasks are allocated between cores and threads, the more efficiently the CPU is utilized.