---
language: "en"
title: "What Is NMS, Really - And Why Can't YOLO Work Without It?"
categories:
  - "Computer Vision"
tags:
  - "NMS"
  - "YOLO"
previousPost: "yolo.en"
slug: "nms-en"
---


# What Is NMS, Really - And Why Can't YOLO Work Without It?

When YOLO scans an image, it doesn't predict just one box per object.
It produces a large number of proposals - sometimes dozens or even hundreds of possible boxes - even if there's just a single object in the image.

This happens because the model checks different regions of the image, and each region might "think" it found the same object.
YOLO's raw output is full of overlapping boxes.

To clean up the result and get one clean box per object, an important step is needed:
NMS - Non-Maximum Suppression.

## Why Is NMS Even Needed?

Suppose a single person appears in an image.
YOLO might propose:

- One box that's too small
- One box that's too large
- A box slightly to the right
- A box slightly to the left
- And many more that overlap each other

All of them are trying to represent the same person, but the model hasn't yet chosen the single most accurate box.

NMS is what makes that choice.

## What Does NMS Do?

NMS takes all the boxes the model proposed, and filters them gradually so that only the highest-quality boxes remain.

The process is simple:

1. Pick the box with the highest score.
2. Remove every other box that overlaps it too much.
3. Move to the box with the next-highest score among those remaining.
4. Keep going until the list is exhausted.

This turns the output from a cluttered, messy list of boxes -
into a short, clear list of objects.

## What Does "Highest Score" Mean?

Every box YOLO produces comes with a confidence score - a number between 0 and 1 that describes how confident the model is that this box actually contains an object.

For example:

- 0.92 → the model is almost certain the box is correct
- 0.67 → there might be an object here, but it's less certain
- 0.18 → probably not an object at all

When several boxes represent the same region,
NMS keeps the box the model believes in the most,
and removes all the other boxes that overlap it.

This step turns the raw prediction into a clear, clean result.

## An Analogy

Imagine you're putting together a photo album, and you got a hundred nearly identical photos from the same moment.

To choose the photo that goes into the album:

1. You take the sharpest, clearest photo.
2. You delete all the similar but lower-quality versions.
3. You move on to the next moment.

In the end, only the excellent photos remain - one per moment.

That's exactly how NMS works:
it keeps only "the best one," and eliminates all the duplicates.

## Conclusion

YOLO gives a broad, fast look at the entire image,
but NMS is what organizes that look and gives it shape.

This is the step that turns a pile of boxes into a precise, clean detection.
