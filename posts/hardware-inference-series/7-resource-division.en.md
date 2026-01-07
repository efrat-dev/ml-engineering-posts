---
language: "en"
title: "Divided Resources - How to Allocate Resources Between Models or Processes"
categories:
  - "Machine Learning"
  - "Hardware"
tags:
  - "Resource Division"
  - "Optimization"
  - "Inference"
series: "Hardware Inference Optimization"
previousPost: "6-thread-affinity-en"
nextPost: "8-resource-optimization-en"
slug: "7-resource-division-en"
---


# Divided Resources - How to Allocate Resources Between Models or Processes

In a single system, multiple models or inference services can run simultaneously - each requiring CPU, GPU, memory, and bandwidth.
The question is: how do you allocate resources so the entire system remains efficient?

## Why Is This Complex?

In a single system, resources are not infinite.
If one model is given too much computational power, others will start waiting - leading to high latency and low throughput.
If resources are divided equally, everyone gets “too little” - and the system doesn’t utilize its full potential.

## The Classic Trade-off: Throughput vs. Latency

- **High Throughput** - How many predictions (inferences) the system can process per second.
  This is important when there’s a high load of requests.
- **Low Latency** - How long it takes for a single request to complete.
  This is critical when immediate response is needed (e.g., in real-time systems).

The more processes you load in parallel, the higher the throughput - but the latency of each process increases.
It’s a delicate balancing act, not “the more, the better.”

## Two Main Approaches to Load Management

1. **Load Balancing**
   An approach that dynamically distributes requests between different models or processes.
   Suitable when all processes are equivalent, and the goal is to maintain balanced utilization.

   Example: An inference server balancing between multiple replicas of the same model.
   - **Advantage** - Flexibility and resilience.
   - **Disadvantage** - Less control over what resources each process actually consumes.

2. **Resource Isolation**
   Instead of balancing “on the fly,” clear boundaries are defined in advance:
   Which model runs on which cores, how much memory it gets, and which GPU it’s allowed to use.

   This approach enables stability and predictable performance - especially when there are critical models that must not be affected by competition.

## How Smart Configuration Changes Everything

A system that correctly defines:

- How many threads are allocated to each model,
- How many concurrent requests it’s allowed to process,
- And how it shares resources with others,

Can improve performance by tens of percent - without changing a single line of code in the model itself.

## Bottom Line

Resource allocation isn’t just about “how much power there is,” but how it’s used.
Proper resource management between models and processes is one of the most important tools in inference optimization:
A precise balance between throughput and latency that distinguishes a system that struggles - from one that feels like a finely tuned engine.