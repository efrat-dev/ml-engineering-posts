---
language: "en"
title: "When a System Reflects Organizational Structure"
categories:
  - "System Architecture"
tags:
  - "Organizations"
series: "When the System Is Already Running"
previousPost: "6-backward-compatibility-en"
nextPost: "8-incident-response-is-culture-en"
slug: "7-system-reflects-org-structure-en"
---


# When a System Reflects Organizational Structure

After talking about Deploys, Rollouts, and backward compatibility,
it's easy to think all the problems are technical.

But then comes the moment you realize:
architecture doesn't just tell a technical story -
it tells a human one.

## The Illusion: "The System Was Built This Way Because It's the Most Correct"

When looking at a complex system,
it's easy to explain its structure in terms of:

- Scale
- Performance
- And architectural decisions

But often,
the real reason is simpler:

that's how the organization is built.

## Organizational Structure Gets Etched Into Code

A system doesn't evolve in a vacuum.
It's built by:

- Teams
- Boundaries of responsibility
- Work processes
- And relationships

And as the system grows,
the organizational structure becomes fixed within it.

You don't need to know theory to see this.
Just look at:

- Where there are many calls between services
- Where there's a thick "coordination layer"
- And where there's code no one wants to touch

That's where an organizational line runs.

## Service Boundaries as Boundaries of Responsibility

Many services aren't separated
by systemic logic -
but by ownership.

- Who's responsible for what
- Who can change something without asking permission
- And who's "just a consumer"

When boundaries of responsibility aren't sharp,
service boundaries also blur.

And the system pays:

- In Latency
- In Retries
- And in dependencies that are hard to untangle

## A Small Example: Why There Are Two "Confirm" Buttons

There's one simple operation in the system:
confirming a user action.

There's a "Confirm" button on one screen,
and a "Confirm" button on another screen.

Both do almost the same thing.

Why two?

Not because it's correct.
Not because it's efficient.

But because:
one screen was built by Team A,
the other screen was built by Team B.

Each team needed "just a small confirmation."
And each one added its own.

At first it seemed negligible.

Then the questions start:
why does this button behave differently?
Why is there a check here, but not there?
Why was a bug fixed on one screen - and came back on the other?

And when you ask:
"why is this built this way?"

there's no good technical answer.

The answer is:
"it was easier for each team on its own."

That's not an engineering decision.
It's a division of labor that got fixed into code.

## Why Organizational Refactoring Is Harder Than Technical Refactoring

You can rewrite code.
You can change architecture.
But organizational structure -
is much harder to move.

That's why:

- Services stay "temporary" for years
- Dependencies get preserved "because that's how it works"
- And complexity becomes impossible to untangle

The system isn't stuck technically -
it's stuck organizationally.

## A Deeper Example: Why There Are Three Services That Do Almost the Same Thing

There are three services in the system:

`user-profile`, `customer-data`, `account-info`.

All of them:
hold similar details,
do similar validations,
and talk to the same data sources.

Why three?

Not because of scale.
Not because of performance.
And not because of a design pattern.

The real reason:

Team A is responsible for onboarding.
Team B is responsible for billing.
Team C is responsible for support.

Each team needed "just a bit of user information."
And each team built its own small service.

At first it was temporary.
At first it was logical.
At first it even worked.

Then the problems started:

- Changing one field requires three Deploys
- A bug gets fixed in one place and comes back in another
- Latency increases because every operation passes through several services
- And no one truly "owns" the full picture

And when you ask:
"why is this built this way?"

the answer isn't:
"because it's the most architecturally correct."

The answer is:
"that's how the teams are divided."

## Where This Gets Etched Into Code

- API boundaries overlap with team boundaries
- Network calls instead of internal calls
- And coordination layers born just so teams wouldn't have to talk

The system isn't telling a technical story -
it's telling who needed to work with whom,
and who preferred not to.

## An Analogy

Think of a city.

Streets, bridges, and neighborhoods
look like planning decisions.

But in practice,
they're the result of:

- Old land divisions
- Interests
- And history that was never erased

Even if there's better technology today -
it's hard to change a city that's already built.

## The Bottom Line

Architecture isn't just system design.
It's a living record of the organization.

Whoever tries to "fix the code"
without touching the human structure -
finds the problems recurring in other forms.

Stable systems get built
when the organization is willing to look at itself.

## Looking Ahead

And when a system is already breaking -
the most important moment isn't the failure itself,
but what happens after it.

In the next post we'll cover the question
of why Incident response
is a matter of culture -
not procedure.
