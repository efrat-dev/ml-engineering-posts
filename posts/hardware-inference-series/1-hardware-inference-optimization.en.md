---
language: "en"
title: "Why Do We Need to Understand Hardware for Inference Optimization?"
categories:
  - "Hardware"
tags:
  - "Optimization"
  - "Inference"
series: "Hardware Inference Optimization"
nextPost: "2-numa-inference-en"
slug: "1-hardware-inference-optimization-en"
---


# Why Do We Need to Understand Hardware for Inference Optimization?

When discussing inference optimization, many immediately think of code: improving the model, using a faster library, or tweaking the batch size.
However, a significant portion of performance - often the vast majority - doesn’t depend on the code at all, but on how the system itself is built and managed at the hardware level.

## The Stage After Training

Once you’ve trained a model, it’s ready to make predictions (inference).
The question now is - how do you run it efficiently?

A model is just a collection of computations. But behind every prediction lies an entire system:
processors, memory, communication between components, process management - all of which directly impact two critical metrics:

- **Latency** - How long it takes to return an answer.
- **Throughput (TPS)** - How many predictions can be processed per second.

## Where Does Performance “Leak”?

If you don’t understand how the system works, it’s easy to end up in a situation where:

- The processor is only busy part of the time.
- Memory is transferred between components inefficiently.
- Multiple processes compete for the same resources.

In other words - the model’s performance isn’t just measured by its computational capabilities, but by how intelligently the system around it is managed.

## What Will We Learn Next?

In the upcoming posts, we’ll dive into the components behind the scenes of inference performance:

- **NUMA** - Why not all memory in a computer is equally accessible.
- **Core Allocation** - How proper CPU resource management improves stability and performance.
- **Divided Resources** - How to distribute loads between models and processes.
- Finally - how all of this converges into tangible metrics like latency and throughput.

## Conclusion

Good optimization doesn’t just start with efficient code - it starts with a deep understanding of how the hardware “thinks.”
Those who understand this can extract performance from the system that feels almost magical -
but is actually the result of smart engineering insight.