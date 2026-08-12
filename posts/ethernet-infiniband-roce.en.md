---
language: "en"
title: "How Do Servers Talk to Each Other - And What's the Difference Between Ethernet, InfiniBand, and RoCE?"
categories:
  - "Communication"
tags:
  - "InfiniBand"
  - "RoCE"
previousPost: "rdma.en"
nextPost: "roce-vs-infiniband.en"
slug: "ethernet-infiniband-roce-en"
---


# How Do Servers Talk to Each Other - And What's the Difference Between Ethernet, InfiniBand, and RoCE?

When we think about servers in a data center, we picture powerful machines computing endlessly.
But the truth? Most of the time, they're passing information to each other.
The connection between them - the network - directly affects AI performance.

## Ethernet - The Standard Way to Talk

Ethernet is like the computers' "spoken language."
It's the basic way computers transfer data over cables -
whether that's at home, in an office, or in a massive data center.

**The advantage:**

- Simple, standard, and cheap.
- Fits almost any computing equipment.

**The disadvantage:**

- Every time information is sent, it passes through the CPU, which creates load and delay (Latency).

## InfiniBand - Super-Fast Communication for Heavy Computation

InfiniBand was built for a world where every millisecond matters -
like when dozens of accelerators (GPU / DPU) work together on the same model.

**The advantages:**

- Enormous speed.
- Nearly instantaneous communication between components.

**The disadvantage:**

- Expensive and complex.
- Requires dedicated equipment that isn't always available on every server.

## RoCE - Combining Both Worlds

RoCE (short for RDMA over Converged Ethernet)
lets a regular Ethernet network work almost like InfiniBand.

What does that mean in practice?
One server can write directly to another server's memory,
without bothering the CPU in between.

- Almost as fast as InfiniBand.
- Uses regular Ethernet infrastructure - no need to replace everything.

## Why Does This Matter for AI?

In systems where several servers work together on the same model,
the speed at which data moves between them
determines the final performance.

Every improvement in communication between servers
translates directly into less waiting, less load,
and more throughput (predictions per second).

## Summary

| Technology | Speed | Cost | Main Advantage |
|---|---|---|---|
| Ethernet | Moderate | Low | Standard, simple |
| InfiniBand | Very high | High | Especially fast communication |
| RoCE | High | Moderate | InfiniBand-like performance over Ethernet |

## An Analogy

If we think of servers as workers in a factory -
Ethernet is like passing messages through a receptionist,
InfiniBand is like talking directly to the other worker,
and RoCE is like setting up a fast internal intercom system between everyone -
without changing the factory's structure.
