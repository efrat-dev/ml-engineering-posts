---
language: "en"
title: "Why a System That Works 99% of the Time Is a Bad System"
categories:
  - "System Architecture"
tags:
  - "Reliability"
  - "Availability"
slug: "99-percent-is-a-bad-system-en"
---


# Why a System That Works 99% of the Time Is a Bad System

At first glance, 99% sounds excellent.
Almost always works. Almost always available. Almost always fast.

But systems aren't measured by "almost."
And users definitely aren't.

## The Mistaken Assumption

The problem starts with a mistaken assumption:
that what happens most of the time is what determines the experience.

In practice, users don't remember averages.
They remember anomalies.

The request that got stuck.
The operation that failed at exactly the wrong moment.
The system that worked great - until it didn't.

The 1% isn't marginal.
It's the part where the system meets reality.

## Why This Gets Worse at Scale

And the larger the system, the more that 1% keeps showing up.

If there are:

- Thousands of users
- Millions of requests
- Or continuous processes

Then a "rare failure" becomes a daily experience for someone.
Every day, someone hits the edge.

## The Gap Between Statistics and Experience

This is where the gap between statistics and experience is born.

By the metrics:
the system is excellent.

By the user's experience:
the system is unreliable.

And reputation is built exactly there -
not where everything works,
but where it doesn't.

## Why Unpredictable Failure Feels Worse

Bad systems don't fail all the time.
They fail unpredictably.

When a failure is:

- Rare
- Hard to reproduce
- And unexplained

It feels far more severe than a constant, clear failure.

Not because of frequency -
but because of uncertainty.

## Designing for Edge Cases, Not Just the Common Case

This is why designing for edge cases matters more than designing for the common case.

The common case usually works itself out anyway.
Edge cases are the ones that require thought:

- What happens when everything suddenly slows down
- What happens when a resource disappears
- What happens when several things go wrong together

That's where the system is tested.

## An Analogy

An elevator that works 99% of the time.
But once every few days, it gets stuck for a few minutes.

Statistically - excellent.
Experientially - no one wants to get in.

## The Bottom Line

A good system doesn't aim to work "almost always."
It aims to behave predictably - even when it fails.

Because the 1% doesn't just define the edge.
It defines trust.
And trust - is reputation.
