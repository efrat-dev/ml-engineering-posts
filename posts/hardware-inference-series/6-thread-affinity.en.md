---
language: "en"
title: "Thread Affinity - How to Bind Cores Smartly"
categories:
  - "Machine Learning"
  - "Hardware"
tags:
  - "Thread Affinity"
  - "Optimization"
  - "Inference"
series: "Hardware Inference Optimization"
previousPost: "5-core-management-en"
nextPost: "7-resource-division-en"
slug: "6-thread-affinity-en"
---


# Thread Affinity - How to Bind Cores Smartly

In the previous post, we explained why it’s important for each thread to stay bound to a specific core - to preserve the cache and avoid performance loss.
Now let’s dive into the practical question: how do you do it right?

## What is Thread Affinity?

Thread Affinity means restricting a thread to a fixed core or group of cores, so the operating system doesn’t move it between cores.
This prevents unnecessary context switching, keeps the cache stable, and allows the processor to work continuously without “disruptions.”

## How Does It Work Behind the Scenes?

Every processor includes multiple physical cores, each with shared resources - like cache, memory controllers, and NUMA nodes (a topic we’ll expand on later).
When a thread “jumps” to another core, it loses all these local advantages.

By setting affinity, we’re essentially telling the system:

“Don’t touch this - this thread belongs to this core.”

In practice, this is done by mapping threads to cores, often through configuration or a dedicated library (e.g., `taskset` in Linux or settings in the runtime environment of an inference engine).

## When is This Especially Critical?

- When running heavy inference models (e.g., Transformer models) that perform multi-step computations on the same data.
- When there are many concurrent requests (high concurrency) - such as an inference server serving hundreds of users.
- In systems with multiple NUMA nodes - where migrating between different memory regions can dramatically impact response time.

## How to Decide What to Bind to What?

- **Separate critical threads from supporting ones:**
  For example, certain cores are allocated for computation, while others handle communication (I/O).
- **Use core groups:**
  If there are 32 cores, you can define groups of 4-8 cores per model, depending on the load.
- **Iterative testing:**
  Start with basic binding - then measure latency and throughput.
  Every small change in allocation can significantly impact performance.

## Pro Tip

Sometimes, optimizing Thread Affinity won’t improve performance - it might even hurt it if it causes overcrowding (i.e., too many threads on too few cores).
That’s why it’s always worth measuring in practice - there’s no substitute for accurate benchmarking.

## Bottom Line

Thread Affinity is a simple yet powerful tool:
It doesn’t require new code, just proper management of existing resources.
In a system where every millisecond counts, controlling where each thread runs can be the difference between a model that “works” and a model that “flies.”