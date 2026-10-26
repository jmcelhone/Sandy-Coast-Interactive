
# RFC: Operating System decision for Aquarium kiosk


| Field | Value |
| --- | --- |
| Author | Ethan Spear|
| Date | 2026-10-25 |
| Status | Proposed |
| Decision Date | (fill when decided) |
| Deciders | Sandy Coast Interactive Team |
| Superseded By | (link, if applicable) |

## Problem and Context

What decision is needed, why now, and what happens if the team does nothing. Write this so a newcomer to the project understands the stakes. 2 to 4 paragraphs.
Decision of what operating system to use for the kiosk. We found out recently that the aquarium will most likely use a raspberry pi 4 as the hardware for the kiosk. With this knowledge the team can now make a more informed decision on what operating system to use and use that knowledge when doing the software design. 
For context, our project is to design a program to run on a touchscreen kiosk in the Sandy Coast exhibit at the Oregon Coast Aquarium. We must design the software which will be a habitat interactive ‘game’ and a bird nesting simulator ‘game’ with a focus on education and usability. We also need to take care of operating system level problems like time out for inactive users, self-rebooting, and user locks for anything beyond our program.  
Deciding on the operating system is needed so that we can work on the operating system code, and make sure we can test for that operating system in our main program design. If we do nothing we could have a lot of retooling to do when installing the program at the aquarium if we didn’t design and test around the correct operating system. 

## Options

At least three options, **including "do nothing"**. Give each option a short name, an account of its real costs, and the condition under which it would be the right choice. An option with no such condition is a strawman, and a strawman weakens the whole document.

### Option A: Raspberry Pi OS

Description, benefits, costs.
We are using (at the moment) Godot. Godot can export easily to Linux and the raspberry pi os is a Linux operating system. It is what comes default on the Raspberry Pi 4 and comes with documentation for setting up a kiosk mode. The cost is that the team does not have a lot of experience with the raspberry pi os and for testing we will need a raspberry pi. 
### Option B: Linux distribution

Description, benefits, costs.
Linux is the operating system the team has the most comfort with writing code for and Linux is highly flexible and light weight. It should run the godot program fine, and we can more easily test the os code. The costs are that we will have to install it to the raspberry pi  and we will have to spend more effort in designing the kiosk mode for running the program. 

### Option C: Do Nothing

What staying on the current path actually costs, and when that cost arrives.
If we do not decide on an operating system and simply keep working on the software without an os in mind, we would not be able to accurately write an operating system code or test the program in the correct environment. When hardware installation occurs, we would have no plan and little time to finish the project. A decision should be made early to avoid this. 
## Analysis

The technical tradeoffs that matter for this decision: performance, complexity, maintainability, security, cost. Argue from evidence (benchmarks, prototypes, documentation, prior art) and cite what you relied on so a reviewer can check it. Acknowledge what you are uncertain about.
The operating system need to be light weight so that the raspberry pi 4 has no issues with running it and the program constantly. Linux is free and supported on raspberry pi’s so an os like windows has too many detriments to be used. The operating system should be easy to use and maintain. 
## Recommendation and Verification Plan

Which option you propose and why it wins the analysis above. Then, concretely: how will the team know it worked? List the tests, metrics, or acceptance criteria that would detect failure, and when they will be checked.
With the analysis in mind using the raspberry pi os would be best after tests of the program and securing a raspberry pi for testing. A raspberry pi is needed for other tests as well so the cost of that does not overcome the benefits to the ease of use and performance of the raspberry pi os on a raspberry pi 4. Another linux distribution would be easier to test but hard to make a kiosk mode and could have more difficult installing and using on the raspberry pi. We will know the decision works when a prototype program can be run on the chosen operating system and that the chosen operating system can be run on the raspberry pi, with a prototype kiosk mode.

## Constraints

Licensing, data use, IP, and the partner confidentiality boundary as they bear on this decision. If none apply, say so explicitly and briefly explain why.
The constraints we face are that the operating system will be run on a raspberry pi 4 and should be supported on the device.

## Delegation and Validation

- **What you handed to AI tools** on this decision, whether that was the analysis, the prototype, the tests, or the writing.
AI was not used to write this document. During research google AI review was read and used to point to other sources (for example the raspberry pi documentation). AI is allowed to be used for making the prototype or designing tests as long as a human reviews all the written code.
- **What checks made that reasonable**: tests, CI, review gates, a staging environment, a rollback path. Name the ones that actually exist in your repo, not the ones you intend to build.

- **Where you stopped and validated the result yourself, and why those points.** If this decision is hard to reverse, say what you personally checked before committing to it.

What is assessed is in the [AI policy](https://capstone.alexulbrich.com/assignments/introduction/#ai-policy-applies-to-every-assignment).

## Decision

Proposed, until your team decides. Then accepted, rejected, or superseded, with the date and who chaired the decision. If superseded, link the RFC that replaces this one.
The decision is proposed with more research and testing needed for an accepted decision. 
