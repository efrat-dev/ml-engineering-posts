---
language: "en"
title: "De Facto Standard - When Strange Behavior Becomes a Law of Nature"
categories:
  - "System Architecture"
tags:
  - "De Facto Standard"
slug: "de-facto-standard-en"
---


# De Facto Standard - When Strange Behavior Becomes a Law of Nature

In most large systems, the standards that really matter
weren't always written in an official document, and weren't approved by a formal committee.

Many of them simply... happened.

Behavior born by accident, a temporary compromise, or a local decision -
that over time became a de facto standard:
a standard in practice, even if it was never designed to be one.

## What Is a De Facto Standard, Really?

A de facto standard is a rule a system "must" obey,
not because it's correct, elegant, or optimal -
but because everyone already relies on it.

This can be:

- Unintuitive API behavior
- A data format with strange exceptions
- An illogical order of operations
- Or an old bug that was never fixed, because other code already built logic on top of it

Once enough systems rely on that behavior -
it's no longer "strange."
It's the law.

## How Does This Happen?

It almost always starts small:

A first version ships quickly to market.
There's no time to polish every corner.
There are edge cases that weren't handled "properly."

At first it doesn't matter.
Then someone builds a workaround.
Then another one.
Then an entire library adapts itself.

At this stage, even if everyone agrees it's not ideal -
it can't be changed.

Not because of code.
Because of dependency.

## An Analogy: A Door You Need to Pull, Not Push

Imagine a building with an entrance door.
Logically - you push to get in.
But this door only opens when pulled.

People learn this.
They develop different muscles.
They even put up a small sign: "Pull."

Years later, a new architect arrives and says:
"this is a design mistake. Let's fix it."

But by then:

- People are already used to it
- Some equipment is adapted for pulling
- Safety mechanisms were built around it

Fixing it now would create more chaos than leaving the mistake in place.

That's what strange behavior that became a standard looks like.

## Why Is This So Powerful?

Because a De facto standard isn't just code -
it's an unwritten contract.

It determines:

- What's allowed to change
- What must not be broken
- And where innovation stops

Even if a "more correct" alternative appears tomorrow -
the surrounding ecosystem has already aligned itself around the old one.

And in large systems, a strong ecosystem
beats elegance.

## The Architectural Cost

The cost doesn't show up as an error.
It shows up as:

- Code with unexplained exceptions
- Comments like "don't change this"
- Compatibility layers that hide a lack of design cleanliness

Every attempt to "clean up" the system
runs into one simple question:

who already depends on this?

## An Architectural Thought

A De facto standard is a sign of system maturity -
but also a warning.

A healthy system knows how to:

- Recognize when random behavior is starting to turn into a contract
- And consciously decide whether to adopt it, contain it, or gradually phase it out

Whoever doesn't make a decision -
gets a standard without choosing it.

## Conclusion

Not every standard is born from planning.
Some are born from habit.

And in large systems,
a habit that holds long enough -
becomes law.

That's where the past doesn't just constrain the present -
it defines what counts as "normal," even when everyone knows that's not how we'd start today.
