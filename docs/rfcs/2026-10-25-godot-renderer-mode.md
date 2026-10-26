# RFC: Godot Renderer Mode — Compatibility
https://github.com/jmcelhone/Sandy-Coast-Interactive/

| Field | Value |
| --- | --- |
| Author | Jeremy McElhone, mcelhonj@oregonstate.edu |
| Date | 2026-10-25 |
| Status | Accepted |
| Decision Date |2026-10-22 |
| Deciders |The Sandy Coast Interactive Capstone Group |
| Superseded By | n/a |

## Problem and Context

Godot 4 has three rendering modes: Forward+, Mobile, and Compatibility. Our project (an interactive habitat exhibit and a bird nesting game for the Oregon Coast Aquarium, built in Godot) has to run on a Raspberry Pi connected to a large tablet. We develop on Windows, Mac, and Linux machines. The renderer is chosen when the project is created, and with our project we chose to use Compatibility mode.

This decision is easy to change now but gets harder over time. Changing the renderer is one project setting, but Godot's documentation says switching between Compatibility and the other two renderers takes more adjustment than switching between Mobile and Forward+. Every visual effect we use including shaders, particles, and lighting we use makes switching even more difficult. What would make it essentially irreversible is having the aquarium’s graphics team's finished assets and our effects completely inserted into the project late in the term, when we have no time to redo them.

## Options

### Option A: Compatibility

Uses OpenGL and supports the widest range of hardware.
Benefits: most likely to run on any device we use, including low-end hardware.
Costs: advanced visual effects are limited or unavailable.
Solid choice since the exhibit is mostly 2D, needs to run on modest hardware, and we will need to focus on reliability.

### Option B: Mobile

Runs on Godot's RenderingDevice backend (with Vulkan, Direct3D 12, or Metal drivers), designed for mobile and desktop.
Benefits: more modern features than Compatibility, closer to Forward+ if we later want to switch.
Costs: requires a GPU and driver that support those APIs, which is risky on a raspberry pi. This would be the right choice if testing shows our hardware supports it and then we decide to use effects the compatibility mode doesn’t even have, or don’t look the way we’d like.

### Option C: Forward+

The most feature-rich renderer, aimed at desktop.
Benefits: all the new visual features in the Godot engine are added here first.
Costs: most limited in terms of hardware compatibility. Right choice only if the final hardware is a capable machine, but our kiosk won’t be.

### Option D: Do Nothing

Leave the renderer unevaluated and keep building. This costs nothing today, but the cost arrives at the first hardware test, when changing renderers means reworking what we built. Right choice only if we had weeks of extra time, which we can’t assume.

## Analysis

Our requirements, from our partner meetings: a 2D program; 1–4 people using one screen at once; a game and a habitat explorer with assets; it must run on raspberry pi; it must run for a long time with no auto-updates.

Performance and compatibility matter most. Godot's ["Overview of renderers"](https://docs.godotengine.org/en/stable/tutorials/rendering/renderers.html) documentation says Compatibility supports the widest range of hardware, while Mobile and Forward+ depend on RenderingDevice drivers (Vulkan, Direct3D 12, or Metal). A 2D exhibit does not need the 3D features that Mobile and Forward+ add, so there’s very little predicted cost to choosing Compatibility mode.

Maintainability: the docs say Compatibility gets new features after the other renderers. That is fine because we chose to develop only with Godot version 4.7.2 and don’t plan to upgrade during development. There are no differences in complexity and security between all the options. There is no cost, since the engine is free and open source.

Uncertainty: We haven’t measured performance from compatibility mode on the target hardware.

Source: Godot Engine documentation, "Overview of renderers",
https://docs.godotengine.org/en/4.7/tutorials/rendering/renderers.html 

## Recommendation and Verification Plan

Use Compatibility. It’s the option that is most likely to work on any device we end up with, and we don’t need the other renderer’s features. The trade-off is limited graphical options, which we accept.

How we will know it worked:
1. The skeleton project launches and reaches the menu scene on the raspberry pi in Compatibility mode. Checked when we get the hardware.
2. The menu and a test scene run for 10 minutes with 1–4 simultaneous touch or mouse inputs.
3. Each time we are given new assets that include graphical features, we run similar tests.

## Constraints

Licensing: Godot uses the MIT license, which requires including its copyright and license notice with what we distribute, with no cost to our partner. [License](https://godotengine.org/license/)
Data and IP: the graphics team's assets must not be altered or fed into AI tools, which is fine as this does not depend on the renderer.
Partner confidentiality: none applies, since the exhibit will only show public educational content.

## Delegation and Validation

- **Handed to AI tools:** I used Claude to help structure this RFC and draft sections from my notes and the Godot docs. I chose the decision, supplied the reasoning and ultimately edited this draft.
- **Checks that exist in our repo:** the project skeleton, README with setup steps. Can rollback to skeleton commit.
- **Where I validated myself:** I built the skeleton in Compatibility mode, ran it on my machine, and checked the Godot documentation referenced above myself.

## Decision

Accepted on 2026-10-22 by the Sandy Coast Interactive capstone team. We will use the Compatibility renderer for the project, and revisit only if the hardware test or art requirements fail.
