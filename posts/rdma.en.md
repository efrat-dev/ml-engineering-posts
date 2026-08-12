---
language: "en"
title: "RDMA - Why Skip the CPU to Gain Speed?"
categories:
  - "Communication"
tags:
  - "RDMA"
  - "Networking"
previousPost: "ethernet.en"
nextPost: "ethernet-infiniband-roce.en"
slug: "rdma-en"
---


# RDMA - Why Skip the CPU to Gain Speed?

When one server wants to send data to another server,
the normal path goes through the operating system and the CPU:
the CPU reads the data from memory, sends it through the network card,
and on the other side the CPU intervenes again to copy the data to the right place.

Sounds reasonable - but it's expensive in time and resources.

## This Is Where RDMA Comes In

RDMA (Remote Direct Memory Access)
is a mechanism that skips the CPU entirely during data transfer.

Instead of every transmission going through the operating system,
the network card (NIC) is granted permission to access the other server's memory directly.

This way data flows from memory to memory - with no stops in between.
This is why latency drops dramatically,
and the CPU stays free for real work (like running your model).

## Why Does This Matter So Much for AI and Inference?

In systems where several servers work together on the same model,
like when distributing a large LLM or joint training,
fast data transfer is the main bottleneck.

RDMA lets all the accelerators, processors, and memory
"talk" to each other almost as if they were inside the same server.

That's the difference between a system that works in fits and starts -
and a system that delivers stable Throughput and consistent Latency.

## A Simple Example

Imagine two computers exchanging files:
the normal way, each of them copies the file several times -
to the operating system, to the driver, to the network card, and back again.

With RDMA it's like opening a "direct pipe" between the two memories,
and streaming the information without stopping even for a moment.

## A Practical Tip

RDMA doesn't stand on its own -
to actually use it, you need infrastructure support:

- A network card that supports RDMA (like RoCE or InfiniBand)
- A matching operating system and drivers
- Correct configuration on the network itself
