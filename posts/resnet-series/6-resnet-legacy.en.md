---
language: "en"
title: "How ResNet's Ideas Reappeared in Many Other Models"
categories:
  - "Computer Vision"
tags:
  - "ResNet"
  - "Architecture"
series: "ResNet Series"
previousPost: "5-resnet-as-backbone-en"
slug: "6-resnet-legacy-en"
---


# How ResNet's Ideas Reappeared in Many Other Models

ResNet wasn't just an architectural success -
it was a conceptual shift.

Once the idea of "preserving information and adding to it" proved itself,
many models began adopting similar principles.

## Notable Examples

- **Transformers** use similar short connections to maintain stability across great depth.
- **U-Net** uses direct information transfers between different stages.
- **Multi-modal vision models** combine information in ways that resemble ResNet.

## Why Does This Happen?

Because a model's "mind" functions better when it:

- Doesn't need to "forget" previous information
- Builds knowledge layer upon layer
- Maintains stability across great depth

This approach has become the standard in modern architecture.

## An Analogy

A tall building stands stable when it has vertical columns that run its full height,
not just separate walls holding up different parts.
That's exactly ResNet's contribution:
creating a stable column of information running through the entire structure of the network.

## Conclusion

ResNet didn't just solve a technical problem -
it shaped a new way of thinking about deep learning.
That's why its legacy is visible in many models well beyond the ResNet family itself.
