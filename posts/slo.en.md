---
language: "en"
title: "SLO: The Internal Target That Defines How the System Should Behave"
categories:
  - "System Architecture"
tags:
  - "SLO"
  - "Reliability"
previousPost: "sla-en"
nextPost: "logs-metrics-events-traces-en"
slug: "slo-en"
---


# SLO: The Internal Target That Defines How the System Should Behave

SLO stands for Service Level Objective.
It's an internal target a team sets for itself regarding the level of service the system is supposed to provide.

Unlike an SLA, which is a contractual commitment to users or customers,
an SLO is an internal engineering and management tool.

It doesn't guarantee compensation,
and it doesn't appear in a contract.
It defines what the system aims for, day to day.

## Same Metrics, Different Purpose

An SLO is based on the same kind of metrics as an SLA:

- Availability
- Response time
- Error rate

But the essential difference is in purpose.

An SLA defines a mandatory lower bound.
An SLO defines a desired level of service.

That is:

- The SLA says when the provider formally failed
- The SLO says when the system isn't behaving as designed

## The Gap Between SLO and SLA as Breathing Room

In mature systems, the SLO is stricter than the SLA.
Not by accident.

The gap between them is breathing room:

- Room for natural variance
- Room for momentary glitches
- And room to learn about the system's behavior without breaching a commitment

When SLO and SLA overlap -
every deviation becomes a crisis.

## An SLO Is Still Statistical, Not Per-Request

It's important to understand:
here too, a target like:
"99.9% of requests will be answered within 100 milliseconds"

doesn't mean every single request will meet it.
It states the expected behavior at the system level over time.

The difference is that an SLO is meant to guide engineering decisions:

- When to pause feature work
- When to invest in stability
- When the system is getting close to its edge

## The Analogy

An SLA is the legal red line.
An SLO is the line engineers set for themselves, well before it.

One defines when we formally failed.
The other defines when we start to worry.

## Summary

A good SLO isn't meant to impress users.
It's meant to guide internal behavior.

And when it's defined correctly,
it turns from a number on a dashboard -
into an engineering compass.
