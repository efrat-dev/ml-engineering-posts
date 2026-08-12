---
language: "en"
title: "RDMA - Two Ways to Reach the Same Destination: InfiniBand and RoCE"
categories:
  - "Communication"
tags:
  - "InfiniBand"
  - "RoCE"
previousPost: "ethernet-infiniband-roce.en"
nextPost: "smartnic.en"
slug: "roce-vs-infiniband-en"
---


# RDMA - Two Ways to Reach the Same Destination: InfiniBand and RoCE

When we talk about RDMA, we mean the ability of network cards to transfer data directly between the memory of different servers - without the CPU getting involved.
But how does this actually happen? There are two main ways:

## InfiniBand - The Dedicated Highway

InfiniBand is a completely separate network, with its own protocol, switches, and dedicated cards.
It was built from the ground up to move data at an especially high rate and with near-zero latency.

**Advantages:**

- Very fast and stable.
- Smart, automatic load management.
- Ideal for HPC clusters and large AI systems.

**Disadvantage:**

- Expensive and requires infrastructure separate from the regular network (Ethernet).

**An analogy:**
Picture a private, smooth highway open only to those with a special license - perfect for speed, but not available to everyone.

## RoCE - RDMA over Converged Ethernet

RoCE (pronounced "rocky") lets you do RDMA over a regular Ethernet network, using supporting network cards.
In other words, you use the existing infrastructure - but with a special "fast lane" for data.

**Advantages:**

- Easier to deploy, no need for new infrastructure.
- Makes use of the existing Ethernet network.

**Disadvantage:**

- Requires careful load management (QoS, congestion control).
- Usually slightly less consistent in performance compared to InfiniBand.

**An analogy:**
It's like adding a fast lane to an existing highway - more available, but sometimes the traffic jams are still there.

## Bottom Line

- **InfiniBand** - the preferred choice when absolute speed and precision matter more than cost.
- **RoCE** - a practical solution for data centers built on Ethernet that want to enjoy the benefits of RDMA without building a new network.
