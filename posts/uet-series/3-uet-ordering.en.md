---
language: "en"
title: "How Is Message Order Guaranteed in RUD PDC? A Beginner's Guide (With a Concrete Example)"
categories:
  - "Communication"
tags:
  - "UET"
  - "RUD PDC"
series: "UET Series"
previousPost: "2-uet-en"
slug: "3-uet-ordering-en"
---


# How Is Message Order Guaranteed in RUD PDC? A Beginner's Guide (With a Concrete Example)

In communication systems there's a natural phenomenon:
messages don't always arrive in the order they were sent.

For example:

We sent: 1 → 2 → 3
But we might receive: 2 → 3 → 1

This isn't a bug - it's a natural communication phenomenon, especially in asynchronous protocols like RUD PDC.

But the application must receive everything in order.
That's why UET provides two clear ways to guarantee order.

## Why Doesn't RUD PDC Guarantee Order on Its Own?

Because RUD PDC is a reliable mechanism, but not an ordered one.
It guarantees a message will arrive -
not that it will arrive on time, or "in order."

Just like postal packages:

- They'll all arrive
- But not necessarily one right after another

UET is meant to add the ordering layer that doesn't otherwise exist.

## The First Method: Tagged Send

Adding numbers to every message, then sorting by number

Message 1 → gets tag 1
Message 2 → gets tag 2
Message 3 → gets tag 3

The receiving process:

- Checks the message number
- Knows what's missing
- Knows what arrived too early
- Knows which message needs to come next

### Example

A sends:

1. "Open file" - tag 1
2. "Write line" - tag 2
3. "Close file" - tag 3

The receiver might get:

- Message 2
- Message 1
- Message 3

But based on the tags - it rearranges them:

1 → 2 → 3

And that's exactly what gets delivered to the application.

## The Second Method: Ordering Logic Inside UET

UET itself becomes a "gatekeeper" that sorts everything before the application sees anything

Instead of the application handling order:

- UET holds messages until everything is complete
- It releases them in the correct order
- It prevents forwarding messages when the order isn't valid

It's like a secretary who receives scattered papers,
organizes everything into the folder in the correct sequence,
and only then hands it to the manager.

The application doesn't even know there was any disorder.

## Another Concrete Example

**Without UET:**

A sends:

1. "Start operation"
2. "Update data"
3. "Finish operation"

B receives, in this order:

- 3
- 1
- 2

The application might crash.

**With UET:**

UET checks the tags:

"I received 3, but 1 and 2 haven't arrived yet - I'll hold for a moment"

When they arrive - UET reorganizes them

B receives: 1 → 2 → 3

Everything is transparent to the application.
