---
language: "en"
title: "Why Most Performance Problems Are Timing Problems"
categories:
  - "System Architecture"
tags:
  - "Scheduling"
  - "Performance"
previousPost: "when-a-knob-is-a-blessing-en"
nextPost: "approximations-save-systems-en"
slug: "performance-is-a-timing-problem-en"
---


# Why Most Performance Problems Are Timing Problems

When a system is slow, the first instinct is to think there's too much work.
Too much computation, too many requests, more load than the system can hold.

But in most cases - that's a misdiagnosis.

The real problem isn't how much work there is,
it's when it gets done.

## There's Compute Power, and Yet Things Get Stuck

Modern systems can almost always handle the total amount of work required.
CPU, accelerators, memory - the power is there.

And yet, things get stuck.

Not because resources are missing,
but because the work arrives at the wrong time,
or is ordered incorrectly.

## Head-of-Line Blocking

This is where the world of queueing comes in.

When jobs arrive faster than they can be processed at that moment,
they enter a queue.

The queue itself isn't the problem.
The problem starts when there's no distinction between types of jobs.

This leads to head-of-line blocking.

A short, simple job
gets stuck behind a long, heavy one.

Not because it requires a lot of time -
but because it arrived after it.

From the user's perspective:
"why does a simple action take so long?"

From the system's perspective:
"I was just waiting."

## Waiting, Not Slow Computation

This is exactly the point where performance looks bad,
even if the total amount of work is relatively small.

Because users don't experience averages.
They experience waiting.

And waiting is created by poor timing,
not by slow computation.

## This Stands Out Especially in Inference

Inference involves:

- Requests of different sizes
- Different models
- Different computation times

When all of them enter the same queue,
without smart scheduling:

- A small request gets crushed
- Latency spikes
- And the system looks unstable

Not because the accelerator is slow -
but because it's busy with the wrong thing at the wrong time.

## Scheduling Is an Architectural Problem, Not an Operational One

This is where it becomes clear that scheduling is a central problem, not a marginal one.

How do you decide:

- Which job runs now
- Which one waits
- And how to prevent one job from blocking others

That's an architectural decision,
not just an operational one.

## The Analogy

One checkout line at a grocery store.
A customer with a full cart stands first.
Behind them - five customers with a single item each.

There's no shortage of cashiers.
There's an ordering problem.

## Summary

Most performance problems aren't solved
by adding compute power.

They're solved by asking:

- How is the work ordered
- When does each thing run
- And where is unnecessary waiting created

Because performance isn't just about the amount of work -
it's about timing.
