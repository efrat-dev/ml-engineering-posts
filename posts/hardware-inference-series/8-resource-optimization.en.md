---
language: "en"
title: "Resource Optimization - How All Factors Impact Latency and TPS"
categories:
  - "Machine Learning"
  - "Hardware"
tags:
  - "Resource Optimization"
  - "NUMA"
  - "Inference"
series: "Hardware Inference Optimization"
previousPost: "7-resource-division-en"
nextPost: "9-series-summary-en"
slug: "8-resource-optimization-en"
---


# Resource Optimization - How All Factors Impact Latency and TPS

In any inference system, every small change - in cores, memory, or the way resources are allocated - impacts two main metrics:

- **Latency** - How long it takes for a single request to complete.
- **TPS (Transactions Per Second)** - How many predictions the system can process per second.

To improve one, you often sacrifice the other. Understanding this balance is the essence of true optimization.

## How NUMA, Core Allocation, and Resource Division Work Together

- **NUMA (Non-Uniform Memory Access)** -
  When a model accesses “remote” memory, it wastes time on inter-processor communication.
  The result: increased latency even if processing power remains the same.

- **Core Allocation (Thread Affinity)** -
  When threads migrate between cores, they lose their local cache,
  reducing efficiency and adding unnecessary delays.
  Maintaining affinity improves stability and prevents “spikes” in latency.

- **Resource Division (Allocating Resources Between Models)** -
  If two models compete for the same resources, each gets less of the CPU or memory it needs.
  This increases latency and can dramatically lower throughput.
  Smart management (proper isolation or load balancing) restores balance.

## How to Measure Correctly and Identify Bottlenecks

Superficial runtime measurement doesn’t tell the whole story.
To understand where the bottleneck is, you need to examine several layers:

- **CPU Utilization** - Are all cores truly busy, or are some “wasting time” waiting?
- **Memory Bandwidth** - Is there access contention between NUMA nodes?
- **Thread Scheduling** - Are threads jumping between cores?
- **Latency Distribution** - Not just the average, but also the standard deviation: instability is a sign of improper allocation.

## Principles for Experimentation and Optimization Testing

- Change only one parameter per experiment - otherwise, you can’t know what really had an impact.
- Measure over time - inference systems are also affected by load fluctuations.
- Track consistent metrics (TPS, P99 latency, CPU usage).
- Compare NUMA/affinity/isolation configurations under identical conditions.
- Document every change - even small optimizations can appear reversed when not tested in the right context.

## Bottom Line

No component - NUMA, cores, or resources - stands alone.
Only by understanding how they all interact can you achieve true optimization:
A system where every computation is utilized, every thread is in the right place,
and every prediction is delivered on time - without wasting a single microsecond.