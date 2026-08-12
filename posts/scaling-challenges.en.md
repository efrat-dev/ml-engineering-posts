---
language: "en"
title: "The Challenges of Scaling - Why “More” Can Sometimes Be Less"
categories:
  - "Hardware Optimization"
tags:
  - "Scaling"
previousPost: "scaling-ai.en"
slug: "scaling-challenges-en"
---


# The Challenges of Scaling - Why “More” Can Sometimes Be Less

When a system starts to grow - more users, more data, more requests - we need it to handle the load.
This is where the concept of Scaling comes in: how to make the system handle more work without breaking.

But here’s the thing - adding “more power” doesn’t always improve performance.

## Two Types of Scaling

### Vertical Scaling

Strengthening the machine itself - adding more memory, more cores, a stronger processor.
It’s like upgrading your computer - it can handle more tasks, but there’s a physical limit to how much it can grow.

### Horizontal Scaling

Adding more machines - each handling part of the load.
It’s like opening more checkout lines in a supermarket: each one shortens the queue a bit.

## When Does It Work Well?

- When requests are independent of each other - for example, processing different images or separate inference requests.
- When the system knows how to distribute the work intelligently, without one server waiting for another.
- When there isn’t much “communication” between machines - meaning each can simply do its own thing.

In such cases, as more instances are added, the overall throughput truly increases.

## And When Does It Hurt Performance?

- When there are dependencies between processes - if each machine needs to wait for another to finish.
- When new bottlenecks are created - for example, everyone accessing the same database or network.
- When communication between machines becomes expensive - sometimes coordinating them takes more time than the actual processing.

In other words: sometimes adding more machines is like adding more people to a team,
but without planning how they work together - they just get in each other’s way.

## How Do You Know If Scaling Is Really Helping?

Two important metrics:

- **Throughput** - How much work the system completes in a given time.
- **Latency** - How long it takes to process a single item.

If Throughput increases without Latency growing - scaling is working well.
If Throughput stalls or Latency spikes - it’s a sign to stop and check the architecture.

## The Connection to the NIC

Both types of scaling share a factor that's easy to overlook: the network interface card (NIC).

In Vertical Scaling, when you add more cores, memory, and accelerators to a single server, the NIC is what has to stream data between the internal components (GPU, DPU, CPU) without becoming a bottleneck itself. A NIC that's too slow will leave accelerators waiting for data, no matter how powerful the rest of the hardware is.

In Horizontal Scaling the challenge is even bigger: the performance of the entire cluster depends on the NICs' ability to move data between servers quickly and accurately. An overloaded NIC creates latency between servers - the exact same "expensive coordination" described above, except here the specific culprit is the network. That's why large Scale Out systems use SmartNICs, which handle data processing, routing, and prioritization before the data even reaches the CPU.

In other words: in both directions, a fast, well-tuned NIC is what separates infrastructure that grows - from infrastructure that struggles to breathe.

## Conclusion

Scaling isn’t magic.
It’s a great tool when you understand where the bottleneck is and how to split the work correctly.
Because in the end, you don’t always need “more power” - sometimes you just need smarter distribution.
