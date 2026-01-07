---
language: "en"
title: "Provisioning - Preparing the Ground Before Running Models"
categories:
  - "Inference Process"
tags:
  - "Provisioning"
  - "Resources"
previousPost: "parallelism-inference.en"
slug: "provisioning-inference-en"
---


# ⚙️ Provisioning - Preparing the Ground Before Running Models

Before an AI model even starts running, the environment it will work in needs to be “set up.”
This stage is called Provisioning - essentially the process of allocating and preparing computing resources.

## What Does It Include?

Provisioning determines where and under what conditions the model will run.
This includes:

- 📦 Allocating servers, GPUs, or CPUs
- 💾 Connecting to data storage
- 🌐 Configuring networks, IP addresses, and permissions
- 🧠 Loading models into memory

Think of it like preparing a stage before a performance -
before the actors (models) come on, you need lights, microphones, power, and order.

## Why is It Important?

If provisioning isn’t done correctly:

- The model will load slowly.
- Inference requests might crash.
- Computing costs will skyrocket.

On the other hand, smart provisioning can save time and money, especially in large systems like data centers.

## Common Types of Provisioning

### Static Provisioning
Resources are allocated in advance and remain fixed - suitable for stable environments with predictable loads.

### Dynamic (or Auto) Provisioning
Resources are allocated and released automatically as needed -
if more inference requests come in, the system “adds computing power” on its own.

### Serverless Provisioning
The user doesn’t see any servers at all - the service itself manages all allocation behind the scenes.

## A Real-World Example

When you send a request to a GPT or BERT model,
this happens behind the scenes:

1️⃣ Kubernetes or another management system detects a new request.
2️⃣ It allocates a free GPU.
3️⃣ Loads the model into memory.
4️⃣ Only then does the actual inference begin.

All of this - real-time provisioning.

## Bottom Line

Provisioning is the stage where the system “gets ready” before work begins.
In smart AI systems, it happens automatically - in seconds -
but without it, no model would run.
