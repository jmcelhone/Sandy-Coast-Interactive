<!-- docs/rfcs/YYYY-MM-DD-short-title.md (or docs/adr/, whichever your repo uses) -->
2026-10-25-Accepted-Game_Engine_Decision.md

# RFC: [Accepted - Game Engine Decision]

<!-- Decision record header. Leave Status as "Proposed" until your team decides,
     before or after the reviews. Then fill in the outcome and the decision date.
     The document stays where it is; this header is what makes it a record. -->

| Field | Value |
| --- | --- |
| Author | Rowan Whitmore |
| Date | 2026-10-25 |
| Status | Accepted |
| Decision Date | 2026/10/20 |
| Deciders | The Sandy Coast Interactive Capstone Group |
| Superseded By | (link, if applicable) |

## Problem and Context

What decision is needed, why now, and what happens if the team does nothing. Write this so a newcomer to the project understands the stakes. 2 to 4 paragraphs.

The decision we need to make is what game engine we will be using for our habitat interactive and bird nesting game. This decision needs to be made now so that we can prepare our GitHub for this project and all group members can start learning how to develop with it. We need an engine that allows us to create a 2D program that lets users choose between playing the bird nesting game and exploring the habitat interactive. The engine must be able to run on a Raspberry Pi and should not have AI overview our game assets since we have discussed and agreed that graphic designs must not be altered or fed into AI tools.

If we do not pick a game engine, we would have to put our development work into our figma demo or some other process that moves us forward. By working more on our figma demo we could create a polished demo that looks similar to our final product. This would allow us to get feedback from our partner on what needs to be changed and what can stay. This would give us a very solid framework for us to use when we start developing our final product.

## Options

At least three options, **including "do nothing"**. Give each option a short name, an account of its real costs, and the condition under which it would be the right choice. An option with no such condition is a strawman, and a strawman weakens the whole document.

### Option A: [Go With Unity]

This engine would be the most familiar for our group as Valerie has actively worked with Unity before. The popularity of this engine would also be preferred due to the fact that skills built during this project would easily transfer to future projects that use this engine. The cost that we ran into was a tier eligibility clause in Unity Editor Software Terms. If your total finances within 12 months exceeds $200,000, you are not eligible to use Unity Personal at all. The next tier up that the Oregon Coast Aquarium could use is Unity Pro which would cost $2310 to run yearly. When I looked up the revenue made from the Oregon Coast Aquarium on Propublica (which pulls from Form 990 documents from the IRS), I found that the total revenue of the Oregon Coast Aquarium was 18.3 million dollars. Since this amount does not exceed 25 million, then we can confirm that using Unity would cost the aquarium $2310 to run yearly. This would be the right choice for us if our partner had no problem with the cost and preferred the support that a paid for program would provide.

### Option B: [Go With Godot]

The Godot Engine is not one our group is familiar with. The benefit of using this is that usage license of Godot follows the MIT License with the only restriction being that, "the Godot Engine binary that you would distribute with your game is a copy of the "Software" as defined in the license, and you are therefore required to include the copyright notice and license statement somewhere in your documentation."(Godot License). This gives us plenty of freedom in using this game engine without having to worry about any financial constraints. The main drawback to using this is unfamiliarity. Since only one of our group members has worked with Unity, this would not be the biggest drawback. Godot is currently funded by Godot Foundation, which is a Dutch non-profit organization. This means that the support for Godot is limited by how much support they can gain instead of how much money they make from license usage. Doing a revenue comparison for the year 2024 between both the Godot Foundation and Unity, Godot had $944,572 in revenue for the year while Unity had $1,813 million. Unity does offer more than just their engine but as we can see, the financial gain of both groups is very different. This is a good choice for us if our partner does not want to spend any extra finances on this project and approves of our chosen game engine.

### Option C: [Go with a third option]

This option would only be selected if there was both a problem with Unity AND Godot that would push us to pick a third option. The drawback to this would be that we would most likely have to use a lesser known game engine that would likely have less support than Unity or Godot does. We would also have to search around whatever constraint got in our way with the other two programs which could cause a challenge. The benefit of this is that whatever issue we faced with the other two engines would hopefully no longer be giving us trouble. This is a good choice for us if we hit a wall with both of the other listed game engines for whatever reason and our project partner would rather have us search for something else to use.

### Option D: [Do Nothing]

If we were to not make any decision we would be held back from making any sort of demo within our engine of choice. This would mean that we couldn't test our skeleton code on hardware that we will be using. Ultimately we will need to make a decision because our code needs to get tested at some point. This option would force us to make a more detailed demo using Figma due to our limitation of developing, but I think as a group we would prefer to start learning and working with our engine of choice. This would be a good choice for us if we wanted more time to develop a detailed demo outside of our chosen engine that our project partner could critique before we even start coding.

## Analysis

The technical tradeoffs that matter for this decision: performance, complexity, maintainability, security, cost. Argue from evidence (benchmarks, prototypes, documentation, prior art) and cite what you relied on so a reviewer can check it. Acknowledge what you are uncertain about.

Since we are working with a non-profit organization that uses a lot of its funding for maintaining its current operations, I think we should go with an option that is low to zero cost for our partner. The program we are developing is not overly complex and should be simple for users to engage in. It must perform in a way that allows 1-4 people to use the screen at the same time. The program must maintain itself for a long time without needing to be fixed. We want to ensure that we do not allow for auto-updates on our program due to this constraint. Since our program is only going to be used on one kiosk at the current moment, we do not need a premium service to host our game and interactive over multiple devices. Our program should be easy to download and setup onto a Raspberry Pi. There isn't any private information that needs to be protected on this device. The only files that shouldn't be easy access for someone is our assets given to us by the graphics team at the Oregon Coast Aquarium. Since this program will be run locally, and doesn't store data of any high value, it is very unlikely that someone will try and tamper with a kiosk to get these assets.

## Recommendation and Verification Plan

Which option you propose and why it wins the analysis above. Then, concretely: how will the team know it worked? List the tests, metrics, or acceptance criteria that would detect failure, and when they will be checked.

With this analysis, we should proceed with using Godot as our game engine. The freedom of usage and no cost required makes this optimal for our work. Picking an engine now allows our team to get familiar with this program and check that it can run on our hardware before we delve any deeper into our development of the game. The team will know that this works for us when we can run our skeleton code on the hardware we will be using at the aquarium. If issues occur during this phase, then that will indicate to us that any further development with Godot will not work with our hardware requirements and will allow us to reverse our decision before it is too difficult to go back.

## Constraints

Licensing, data use, IP, and the partner confidentiality boundary as they bear on this decision. If none apply, say so explicitly and briefly explain why.

What limits us here is pricing, while Unity is a more familiar game engine to our group, it comes at a cost. Due to the amount of funds the Oregon Coast Aquarium makes and needs in order to keep running. We think it is best to go with a free licensing game engine such as Godot. This removes the financial barrier that using Unity would cause for our partner. To work around learning Godot, we will use tutorials as needed and delegate more time towards working on the code since it will be a learning experience for everyone. Confidentiality of information is not important for this project since we are developing an educational program for the attendees of the Oregon Coast Aquarium. All text information given or created by us about the animals exhibited will be information displayed to our users.

## Delegation and Validation

- **What you handed to AI tools** on this decision, whether that was the analysis, the prototype, the tests, or the writing.

AI tools were not used during the creation of this 2026-10-25-Accepted-Game_Engine_Decision.md. AI Tools are allowed to be used during the creation of a prototype and tests of our program. The only requirement for this is that the writer of the code or text reviews what was generated, makes necessary edits, and understands the content that they are creating with these tools.

- **What checks made that reasonable**: tests, CI, review gates, a staging environment, a rollback path. Name the ones that actually exist in your repo, not the ones you intend to build.

In our GitHub, we have a project skeleton created along with documentation on how to test that the engine functions with the project on your device. Since we only have a skeleton of our project uploaded, any future development can be rolled back to this version as needed for now. With our continuous development, we will make tests and ensure code functions before it is merged to create more spots that we can safely roll back to as needed. 

- **Where you stopped and validated the result yourself, and why those points.** If this decision is hard to reverse, say what you personally checked before committing to it.

Our team member Jeremy has created the project skeleton, validated it worked in his environment, and posted the documentation for other team members to follow to ensure it works on their ends. One thing I want to check for our decision before we can say we are 100% certain of it is to rent the hardware from OSU that our program will be run on and validate if it can successfully run on there. Once we can validate this, we can proceed with our project knowing that this decision works with our hardware requirement.

What is assessed is in the [AI policy](https://capstone.alexulbrich.com/assignments/introduction/#ai-policy-applies-to-every-assignment).

## Decision

Proposed, until your team decides. Then accepted, rejected, or superseded, with the date and who chaired the decision. If superseded, link the RFC that replaces this one.

At the current moment, our team's decision is to move forward with building our game and interactive using the Godot game engine. This was our second pick of an engine after Unity. The reason we had to abandon our use of Unity was due to the fact that the revenue made by the Oregon Coast Aquarium would force them to have to purchase a Unity Pro plan for us which would be a $2310 yearly cost. As a group we agreed to this during class on October 16, and confirmed this decision with our partner on October 24 when visiting in person. This decision will be finalized once we can confirm that our project skeleton is either successful or unsuccessful at running on the hardware we must use for this project.
