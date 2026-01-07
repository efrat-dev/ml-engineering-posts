---
language: "en"
title: "What is Tapeout - And Do You Really Send a Tape to Manufacturing?"
categories:
  - "Chip Design"
tags:
  - "Tapeout"
  - "Production"
series: "Chip Design Journey"
previousPost: "chip-design-journey/11-simulation-fpga-emulation.en"
nextPost: "chip-design-journey/13-fab-bringup-post-silicon.en"
slug: "12-tapeout-en"
---

# What is Tapeout - And Do You Really Send a Tape to Manufacturing?

We've come a long way:

- RTL
- Synthesis
- Place & Route
- STA
- Verification
- Simulation, FPGA, Emulation

And now we've reached the most exciting moment in chip design:

**Tapeout**
Or: sending to manufacturing.

**This is the stage where the design is "sent to the factory" - and the chip becomes reality.**

## Why Is It Called "Tapeout"?

In the past, before the digital era:

- The chip design was sent on a **magnetic tape**
- It was called: **Tape**
- Sending to manufacturing was called: **Tapeout** (sending out the tape)

Today, of course, tapes aren't sent.
Large digital files are sent.

**But the name remained.**

It's like "recording an album" - even though we no longer record on CDs.

## What Actually Happens at Tapeout?

Tapeout is a stage where:

1. The complete design passed all tests
2. The Layout is ready
3. STA passed successfully
4. All bugs were fixed
5. The entire system was tested

**And now, the final file is sent to the factory (FAB).**

The file is called:

**GDSII - Graphic Data System II**

This is a format that describes:

- All chip layers
- All transistors
- All wires
- The entire chip structure at physical resolution

**This is the "construction plan" of the chip.**

## Why Is Tapeout So Exciting?

Because:

- It's the end of a complete process that can take years
- It's the moment when the design "leaves your hands"
- After this, nothing can be changed
- A mistake here costs millions of dollars

**Tapeout is a moment of excitement and also enormous pressure.**

Development teams spend entire nights before Tapeout to ensure everything is perfect.

## What Happens After Tapeout?

The design arrives at the factory (FAB).

The factory:

1. Checks the file
2. Prepares the Masks for manufacturing
3. Starts the physical manufacturing process
4. Manufactures Wafers (silicon discs)
5. Cuts the chips from the discs
6. Packages them

**This usually takes between one to three months.**

## What Is a Mask Set?

To manufacture a chip, the factory uses **masks**:

- Each layer in the chip needs its own mask
- The mask determines where there will be transistors, wires, metal
- The manufacturing process uses dozens of masks

**The GDSII becomes masks, and the masks become chips.**

## Is There Still a Chance to Change Something?

No.

After Tapeout:

- The design is frozen
- RTL cannot be changed
- Bugs cannot be fixed
- Any change requires a new Tapeout (= enormous cost)

**That's why development teams do everything to ensure the design is correct before Tapeout.**

There are cases where a bug is discovered after Tapeout.

In such cases:

- Sometimes an additional Tapeout is done (Respin)
- Sometimes the bug is worked around in software
- Sometimes the chip simply fails

**This is why Verification teams work so hard.**

## How Much Does It Cost?

Tapeout of a modern chip can cost:

- **Old process (28nm and above):** Hundreds of thousands of dollars
- **Advanced process (7nm, 5nm, 3nm):** Millions of dollars
- **Complex chip:** Tens of millions of dollars

**It's an enormous investment.**

That's why only large companies or well-funded projects can afford it.

## What Happens After Manufacturing?

After the chip is manufactured:

1. First samples are received (First Silicon)
2. Testing begins (Bring-Up)
3. Verify the chip works
4. Fix bugs if any (in software or Respin)
5. Move to mass production

**And then the chip's real life begins.**

## An Analogy to Clear Things Up

Think about building a structure:

**Frontend:** Architecture planning - how many rooms, how many floors.

**Backend:** Detailed planning - where each room, where the plumbing.

**Verification:** Checking everything is correct.

**Tapeout:** Sending the plans to the construction factory.

**After Tapeout:** Start building in practice - and the plans can't be changed anymore.

## Summary

Tapeout is:

- Sending the final design to the factory
- GDSII file containing the entire chip
- The moment when the design is "frozen"
- The stage where the chip moves from description to manufacturing
- An exciting and stressful event simultaneously

**After Tapeout, the chip is on its way to becoming physical reality.**

---

**In the next post, we'll learn about FAB, Bring-Up, and Post-Silicon Validation - what happens in the manufacturing plant, how the first chip is tested, and how you ensure it works as planned.**
