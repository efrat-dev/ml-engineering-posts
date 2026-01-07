---
language: "en"
title: "Series Summary: From NUMA to Throughput - How Optimization Turns Hardware into Performance"
categories:
  - "Machine Learning"
  - "Hardware"
tags:
  - "Optimization"
  - "NUMA"
  - "Thread Affinity"
  - "Resource Management"
series: "Hardware Inference Optimization"
previousPost: "8-resource-optimization-en"
slug: "9-series-summary-en"
---


# Series Summary: From NUMA to Throughput - How Optimization Turns Hardware into Performance

Throughout this series, we’ve seen that the performance of an inference system doesn’t just come from the model -
it comes from how the entire system is built around it.

## What We’ve Learned:

- **NUMA** - Why memory proximity impacts latency,
  and how accessing “remote” memory can slow down an entire system.
- **Core Allocation and Thread Affinity** -
  How binding threads to the right cores prevents cache loss and boosts efficiency.
- **Resource Division** -
  How proper planning of resource allocation between models maintains a balance between throughput and latency.
- **Smart Scaling** -
  When increasing the number of processes helps, and when it just creates overhead.

Finally, we saw a real-world example where an architectural change alone
led to a threefold performance improvement - without changing a single line of code in the model itself.

## The Key Takeaway

In Inference Optimization, there’s no magic.
Every real improvement comes from understanding what’s happening “under the hood” -
how the processor accesses memory, how processes are scheduled, and how load is distributed.

A truly fast system isn’t the one with the most cores -
it’s the one that uses each of them intelligently.

## What’s Next?

In the next series, we’ll move to the practical stage:
We’ll see how to run a smart benchmark that measures all these effects in practice.

### We’ll Learn:

- How to measure Latency and Throughput reliably.
- How to identify real bottlenecks using CPU, NUMA, and Memory Access data.
- And how to prove with numbers what changed after each optimization.

## Bottom Line

Optimization isn’t measured by feeling - it’s measured by data.
To truly understand the effects of NUMA, core allocation, or scaling,
you need to see them in numbers, in real time.

That’s exactly what we’ll do in the next chapter -
we’ll build the benchmark that shows how theory turns into performance.