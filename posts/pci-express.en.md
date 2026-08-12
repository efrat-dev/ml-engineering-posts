---
language: "en"
title: "What Is PCI Express, Really - And Why Is It Critical in Advanced Computing Systems?"
categories:
  - "Communication"
tags:
  - "PCIe"
  - "Hardware"
previousPost: "switch.en"
slug: "pci-express-en"
---


# What Is PCI Express, Really - And Why Is It Critical in Advanced Computing Systems?

In a computer, like in a big city, it's not enough to have strong "buildings" (like the CPU and GPU) -
you also need wide, fast roads connecting them.
Those roads are called PCI Express, or PCIe for short.

## So What Is PCIe?

PCIe is an internal communication channel that lets components like GPUs, NICs, and NVMe drives
transfer data to the CPU and memory at high speed.

But here's the important part - PCIe is built from a number of lanes.
Each lane is like a two-way road carrying data back and forth.
A connection can be ×1, ×4, ×8, or ×16 lanes wide -
the more lanes there are, the more "information" moves every second.

For example:

- A ×1 connection → like a single lane for one car.
- A ×16 connection → like a highway with 16 lanes running in parallel.

## What If There Are More Components Than Available Lanes?

The CPU and the motherboard limit the total number of lanes.
If, for example, a CPU has 24 lanes, and it's connected to:

- One GPU (×16)
- A fast NIC (×8)

then the entire capacity is already used up.

If we add another PCIe card, the system will split the lanes -
for example, two cards might each get ×8 instead of ×16.
It's like a city opening more roads - but at the expense of widening the existing ones.

## Versions and Speeds

Every generation of PCIe increases the bandwidth per lane:

- **PCIe 3.0** - about 1 GB/s per direction.
- **PCIe 5.0** - about 4 GB/s per direction.
- **PCIe 6.0** - already double that, with advanced encoding methods.

The implication: even with the same number of lanes, a newer version moves more data in the same amount of time.

## An Analogy

Think of PCIe as a smart road system connecting all the "neighborhoods" of the computer:
the CPU is downtown,
the GPU is the industrial zone,
and the SSD is the giant warehouse.
PCIe's lanes are the roads connecting them -
when they're wide and fast, everything flows; when they're congested, a bottleneck forms.

## An Architectural Tip

In large Inference or AI systems, it's important to check not just how many accelerators there are,
but how they're connected.
A GPU connected via ×4 instead of ×16 can slow down the entire system.
Proper planning of PCIe lanes is a critical part of performance optimization.
