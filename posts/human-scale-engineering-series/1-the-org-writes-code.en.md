---
language: "en"
title: "The Organization Is Part of the System (Even If You Never Wrote a Line About It)"
categories:
  - "System Architecture"
tags:
  - "Organizations"
series: "Human-Scale Engineering"
previousPost: "0-introduction-en"
nextPost: "2-incentives-beat-architecture-en"
slug: "1-the-org-writes-code-en"
---


# The Organization Is Part of the System (Even If You Never Wrote a Line About It)

When engineers talk about "the system,"
they usually mean the code.

Services.
APIs.
Data flows.

But in practice,
the real system is broader.

It also includes whoever develops it,
whoever approves it,
whoever's afraid to change it,
and whoever pays the price when something breaks.

## The Illusion: You Can Separate Technical From Human

It's easy to believe there's
a "pure" technical layer,
and above it a "messy" organizational layer.

That if we just write correct code,
we can isolate ourselves from human noise.

In reality, it doesn't work that way.

Every technical decision is also a human decision:

- Who needs to approve a change
- Who bears responsibility for failures
- Who's rewarded for speed, and who for stability
- And who's even allowed to say "no"

These choices get etched into the system
exactly like any other line of code.

## A Simple Example: Why One Operation Becomes Three Calls

There's a basic operation in the system:
updating an entity's status.

Originally,
it was one service, one call.

Over time, two more services got added:

- One "just to approve"
- One "just to log"

Why did it get split up?

Not because there was a technical need.
Not because of scale.
And not because of performance.

But because:

- Approval was the responsibility of a different team
- Logging was the responsibility of a third team
- And no one wanted to be the one "breaking" something for others

And so,
one simple operation became a chain:

service → service → service

With retries.
With timeouts.
And with responsibility scattered among everyone.

When the next change comes along,
everyone agrees "this is complicated" -
but no one remembers why it started this way.

The code looks technical.
The reason is human.

## Where You See the Organization in the Code

You don't need to know theory to spot this.

Just look at:

- Services that communicate over a network instead of through a function
- Thick "coordination" layers that don't add logic
- Code no one touches even though it's critical
- Tests that don't get written because "it's too risky"

These aren't technical malfunctions.
They're signs of human structure.

## Why It Gets Worse Over Time

In small systems,
human gaps get absorbed.

In large systems,
they accumulate.

Every small friction turns into:
another retry,
another workaround,
another exception.

Not because the engineers are less skilled -
but because the system already reflects
a complex relationship between people.

## The Turning Point for Experienced Engineers

At some point in their career,
good engineers stop asking:

"How do we fix this in the code?"

and start asking:

"What human structure created this?"

This isn't escaping technical responsibility.
It's expanding it.

Because in truly large systems,
you can't fix one
without understanding the other.

## The Bottom Line

The organization isn't "background" to the system.
It's part of it.

Whoever plans, develops, or maintains a system
without understanding its human context
is building only a partial solution.

And the system will remind them of that,
again and again,
at exactly the most inconvenient moments.

## Looking Ahead

If the organization is part of the system,
a troubling question arises:

what happens when organizational structure
doesn't allow for timely decision-making?

In the next post we'll address the question:
how are decisions made when the system is live,
but the picture isn't complete.
