---
language: "en"
title: "Why Organizations Struggle to Learn"
categories:
  - "System Architecture"
tags:
  - "Organizational Learning"
  - "Postmortem"
series: "Human-Scale Engineering"
previousPost: "6-leadership-that-allows-mistakes-en"
nextPost: "8-when-capacity-runs-out-en"
slug: "7-why-orgs-struggle-to-learn-en"
---


# Why Organizations Struggle to Learn

Almost every organization says it "learns from failures."
And almost every organization repeats the same mistakes.

That gap isn't accidental.
The knowledge exists -
but it doesn't move.

## The Illusion: If We Analyze, We'll Learn

After a failure, the following usually happens:
data gets collected.
A presentation gets written.
Conclusions get drawn.

On paper - learning.
In practice - documentation.

Real learning isn't writing down what happened,
it's changing what happens next time.

## Why Postmortems Don't Change Behavior

A postmortem is a process in which an organization analyzes a failure that already happened:
what went wrong, how it was detected, and what actions were taken to prevent recurrence.
Its stated goal is learning - not blame.

Most postmortems fail for one simple reason:
they focus on the event,
not on the system that created it.

They answer:

- What broke
- Who was involved
- And what specific change we'll add

But they don't touch:

- Incentives
- The structure of responsibility
- Or processes that keep producing the same failure

The result is a good document -
without real change.

## Local Knowledge vs. Systemic Learning

In every failure, there are people who learn a lot.
The problem is that this learning stays local.

It gets stuck:

- In one team
- In one domain
- Or with two or three people "who know"

The organization, as a system,
doesn't change.

Next time -
a similar failure will appear elsewhere,
with different names,
but for the same reason.

## A Practical Example: A Failure That Was Learned - and Forgotten

In a certain organization,
a failure was caused by a combination of a short timeout
and momentary load.

The postmortem was excellent:

- They understood the root cause
- Improved the timeout in one service
- And added a check

Six months later -
an almost identical failure,
in a different service,
in a different team.

Why?
Because:

- The incentive for speed remained
- Assumptions about load didn't change
- And the learning wasn't translated into an organizational principle

The knowledge was there.
It simply didn't move.

## How an Organization "Forgets" Over and Over

Organizations forget not because of a short memory,
but because of structure.

This is what it looks like:

- There's no ownership of cross-cutting learning
- And systemic changes are politically expensive

It's easier to:

- Fix locally
- Move on
- And hope it doesn't happen again

And it always does.

## When Real Learning Actually Happens

Learning happens when you change one of these:

- Incentives
- Boundaries of responsibility
- Or a process that produces the same pattern

Not when you add another test.
And not when you write another document.

Learning is a structural change -
not an intellectual one.

## The Bottom Line

Organizations don't fail at learning because they lack smart people.

They fail
because their structure
doesn't let knowledge move.

## Looking Ahead

Even when an organization understands its problems,
it doesn't always have the capacity to improve.

In the next post we'll address that moment -
when an organization simply has no more capacity for change,
and why adding people or processes
only makes things worse.
