<!-- docs/rfcs/2026-10-25-RFC_week4_NolanR.md -->

# RFC: Selecting a Game Engine

| Field | Value |
| Author |Nolan Rousselle |
| Date | 2026-10-25 |
| Status | Accepted|
| Decision Date | 2026-10-20|
| Deciders | The entire capstone group|
| Superseded By | (link, if applicable) |

## Problem and Context

Our team is creating interactive programs for Oregon Coast Aquarium visitors to use in the Sandy Coast section. A major decision for this is what game engine we will create the programs in, because that is the architectural foundation for our entire project. Each game engine uses a different coding language, has different strengths and weaknesses in performance, and their own levels of difficulty for developers.

Changing the game engine partway through the program’s development would effectively mean starting from scratch: the biggest obstacle would be translating all of our code from one language to another, likely made more difficult by the fact some languages have features that others don’t. additionally, we would need to reconstruct the program’s implementation in the new game engine as well, because just as much work is done in the engine itself as is done in the code. 
## Options

At least three options, **including "do nothing"**. Give each option a short name, an account of its real costs, and the condition under which it would be the right choice. An option with no such condition is a strawman, and a strawman weakens the whole document.

### Option A: Using Unity

Use the Unity game engine to develop our interactive programs. The benefits here are plentiful: it’s an industry-standard system, so there are numerous resources and features supporting it, and it’s generally regarded as an easier system for developers to work with than other game engines, like Unreal Engine. However, there is one major problem with using this game engine, and that is the pricing—because we are working with the Oregon Coast Aquarium, we would need to pay a significant amount for Unity Licenses because they are a large for-profit organization.

### Option B: Using Godot

Use the Godot game engine for our programs. The benefits for this one are similar to Unity: it is popular and relatively easy to use, with many industry-standard features. Although the licensing costs are not a concern, it does pose the challenge of having a unique coding language in GDScript, but it is mostly similar to Python, so learning it should not be too difficult. 
### Option C: Do Nothing

This path involves not using a game engine for our programs, and having this all run within a single .exe file. The benefit here is there is no issue around licensing or using coding languages we are unfamiliar with. The major cost, though, is we would lack the infrastructure for our program that would be greatly beneficial to developing outside of the code itself, which would make replacing that within the code much more complicated.

## Analysis

The main technical consideration here is that our hardware is a display powered by a raspberry pi. The program, and the game engine it runs on, will need to be able to run on it without experiencing lag, delays, or other malfunctions. Additionally, if we choose to go with Unity, we will have to pay licensing costs, source: https://unity.com/products . Godot will be slightly more complex, due to it not having quite as many resources as Unity, but not by much. Working without a game engine would be much more complex.
## Recommendation and Verification Plan
I propose that our capstone group work with the Godot game engine. It has the best benefits-to-cost ratio and would be a good fit for our group and project. For one, the built in coding language, GDScript, is very similar to Python, one that we are all familiar with, so it wouldn’t be difficult to learn the new programming language. Additionally, it is a simple engine that is easy to work in, even for less experienced game developers, and should have a strong performance on our simple hardware considerations. The team will know it worked if it is able to run our program on the display at the aquarium, and appropriately respond to user input, with minimal performance issues or delays. These will be checked once our minimum viable product is ready, and in the weeks during testing and refinement, during late winter and spring quarters.
## Constraints

The only constraint here is licensing potentially being involved. This would come into play if we opt to use Unity, due to the Aquarium’s size (they are a large enough organization we would need to pay to use Unity for them), but it wouldn’t be an issue for Godot or abstaining from a game engine.
## Delegation and Validation

- **What you handed to AI tools** on this decision, whether that was the analysis, the prototype, the tests, or the writing.
- **What checks made that reasonable**: tests, CI, review gates, a staging environment, a rollback path. Name the ones that actually exist in your repo, not the ones you intend to build.
- **Where you stopped and validated the result yourself, and why those points.** If this decision is hard to reverse, say what you personally checked before committing to it.

What is assessed is in the [AI policy](https://capstone.alexulbrich.com/assignments/introduction/#ai-policy-applies-to-every-assignment).
No AI was used in the making of this document. 
## Decision

Accepted on 10-25-2026, by the entire group.

