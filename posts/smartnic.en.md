---
language: "en"
title: "RDMA and SmartNICs - When the Network Card Gets Smart"
categories:
  - "Communication"
tags:
  - "SmartNIC"
  - "RDMA"
previousPost: "roce-vs-infiniband.en"
nextPost: "switch.en"
slug: "smartnic-en"
---


# RDMA and SmartNICs - When the Network Card Gets Smart

In AI data centers, as well as in HPC environments,
the load on the CPU just keeps growing.
Not only computation - the data traffic itself also consumes resources.

This is where SmartNICs come in, or by their more advanced name - DPUs (Data Processing Units).

## What Actually Changes?

Instead of the network card being just a "pass-through pipe" for data,
it gets a small brain of its own - a processor, memory, and acceleration mechanisms.
Now it doesn't just move data, it also processes it,
taking on part of the load the CPU used to handle.

## How Does RDMA Fit Into This?

RDMA allows direct access to memory, without involving the main CPU.
When you combine this with a SmartNIC,
you get a situation where the network card can talk directly to the memory of other servers,
perform independent data transfers,
and leave the main CPU free for real AI computation.

The result:
less delay, fewer copies, lower power consumption,
and more real throughput for training or running models.

## An Analogy

If the server is a large office,
then in the past every clerk had to stop the CEO to hand an envelope to another room.
With RDMA, the clerk can send the envelope directly.
And when there's a SmartNIC - the clerk also knows how to sort, update, and send it to the right place on their own.

## Bottom Line

SmartNICs turn the network into an active component, not just passive infrastructure.
With RDMA, they close the gap between computation and communication -
and let AI run at the pace it actually needs.
