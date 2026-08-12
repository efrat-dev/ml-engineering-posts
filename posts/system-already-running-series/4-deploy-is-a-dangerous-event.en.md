---
language: "en"
title: "Deploy Is a Dangerous Event"
categories:
  - "System Architecture"
tags:
  - "Deploy"
series: "When the System Is Already Running"
previousPost: "3-when-metrics-lie-en"
nextPost: "5-gradual-rollout-en"
slug: "4-deploy-is-a-dangerous-event-en"
---


# Deploy Is a Dangerous Event

After understanding that Latency is born from decisions,
and that Metrics can reassure even when you should be worried -
comes the moment when you try to "fix" it.

And then you Deploy.

## The Illusion: "It's a Small Change"

Deploy is perceived as a technical action:

- We shipped a version
- We added a field
- We fixed a specific bug

The change looks minor.
The risk - negligible.

That's one of the most dangerous illusions in production.

## Why Deploy Is Dangerous by Nature

Deploy isn't just a code change.
It's a change to the system's state.

During a Deploy, these change simultaneously:

- The running code
- Timing
- Interactions between components
- And hidden assumptions built up over time

Even if the code is "correct" -
the context it runs in has changed.

## Why Deploys Break More Than You'd Think

Most breakages don't stem from a direct bug.

They stem from:

- A change in the order of operations
- A change in load at one point
- A change in response time
- Or a change in expectations between services

A small deploy can:

- Move a Bottleneck
- Trigger code that hadn't run before
- Or expose a dependency that wasn't noticeable

The breakage isn't in the new code -
it's in its encounter with a live system.

## Rollback Is a Comforting Illusion

"If there's a problem - we'll roll back."

That sounds responsible.
It feels safe.

But in production:

- The system has already seen the change
- Data has already been written
- Queues have already filled up
- And clients have already responded

Rollback reverts code -
it doesn't revert state.

It helps,
but it almost never erases the impact.

## Change as a Chain Reaction

Deploy isn't a single point event.
It's the start of a chain.

A small change:

- Shifts Latency
- Changes usage patterns
- Triggers Retries
- And creates secondary load

The response to the change
can be bigger than the change itself.

This is why Deploys are dangerous:
not because of what you planned -
but because of what you didn't anticipate.

## An Analogy

Think of a small change in a river.

Moving one rock:

- Changes the flow
- Shifts sediment
- And opens a new path

The rock is small.
The impact - isn't.

## The Bottom Line

Deploy isn't a technical moment.
It's a systemic event.

Stable systems don't ask:
"is the code correct?"

They ask:

- What else does this change
- Where might it amplify load
- And how will we detect a problem early

A small change in production
isn't small at all.

## Looking Ahead

Out of fear of a sharp Deploy,
a solution that sounds safer was born:

doing everything gradually.

But "gradual" isn't always gentle -
and sometimes it's more dangerous than a sharp change.

In the next post we'll examine why
Gradual rollout
can create dangerous intermediate states,
and why partial failure
is harder than total failure.
