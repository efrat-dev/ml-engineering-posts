---
language: "en"
title: "SLA: What It Really Is - and Why the Definition Itself Is Already Limiting"
categories:
  - "System Architecture"
tags:
  - "SLA"
  - "Reliability"
previousPost: "bottleneck-en"
nextPost: "slo-en"
slug: "sla-en"
---


# SLA: What It Really Is - and Why the Definition Itself Is Already Limiting

SLA stands for Service Level Agreement -
an agreement that defines what level of service a system commits to providing.

In simple terms:
an SLA doesn't describe how the system is built,
it describes what is guaranteed to happen over time. This commitment is made against a cumulative metric across time and a population of requests.

## What an SLA Usually Defines

An SLA usually defines metrics such as:

- Maximum response time
- Availability percentage
- Allowed error rate
- A measurement window (an hour, a day, a month)

For example:
"95% of requests will be answered in under 100 milliseconds over a month."

That's not a promise for every request.
It's a statistical promise.

And that's the key point.

## An SLA Doesn't Guarantee a Uniform Experience

It guarantees meeting a cumulative metric over time.

Which means:

- Some requests can be very slow
- The system can be unavailable part of the time
- And the SLA will still be considered "met"

Not because of cheating,
but because that's how the definition is built.

## This Is Where the Systemic Gap Appears

From the system's perspective:
the commitment was fulfilled.

From the perspective of a user who fell into the edge case:
the experience broke.

An SLA measures a system from above.
The experience is created from below - in a single request, at a single moment.

## The Analogy

A store commits that 95% of customers get served within two minutes.
If you're in the 5% waiting fifteen minutes -
the promise doesn't feel relevant.

## Summary

An SLA is an important tool for managing expectations and contracts.
But it isn't a complete description of systemic behavior.

Mature systems understand:
an SLA defines a lower bound of service,
not the real quality of the experience.

And the gap between them -
is where engineering begins.
