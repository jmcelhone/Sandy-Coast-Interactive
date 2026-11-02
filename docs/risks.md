# Risks

Objective: An interactive experience that runs on the aquarium's display in the Sandy Coast section, and that aquarium staff can maintain.

Rank: likelihood/impact (H/M/L) and why. Last reviewed: 11/1/2026

R-1 business, H/H (team roles undecided; affects every deliverable). The instructors asked the six of us to split into two teams of three, and how the work and the partner relationship divide between the teams is not settled; if it stays open, the two teams may build overlapping or conflicting pieces. Owner: Nolan. Mitigate: write down each team's role and share it with our TA. Trigger: no agreed roles and duties by 11/21/26.

R-2 technical, M/H (untested on the real device; it's the deployment target). We plan to deploy to a Raspberry Pi 4 at the aquarium, and we haven't run the Godot project on one; if it performs badly, the product won't run acceptably where visitors use it. Owner: Ethan. Mitigate: spike a scaffold build on a Pi 4 (or equivalent) early. Trigger: no spike result by scheduled first demo sprint review, week 10.

R-3 business, M/H (the aquarium's rules gate production). We don't know whether the aquarium requires approval for installing software or connecting devices to its network; if it does and we haven't asked, the walking skeleton can't be deployed on time. Start by: 11/2/26. Owner: Katie. Mitigate: ask IT in the next meeting they are available. Trigger: no clear framework two weeks after asking.

R-4 business, M/M (partner is non-technical; requirements are unconfirmed). Not all our partners are software people, so some requirements are still assumed rather than confirmed; if there's a mismatch, we build features the aquarium doesn't want. Owner: Valerie. Mitigate: show a clickable prototype before committing to integrating each feature. Trigger: a requirement still marked "assumed" at the start of its sprint.

R-5 team, M/M (one person set up CI; not yet documented). Only one person has set up the CI; if they're away, a broken pipeline may stay broken. Owner: Jeremy. Mitigate: document the CI in CONTRIBUTING.md and have a second person fix or change it once. Trigger: CI red for more than two days.

## Closed
R-6 team, M/M (six people, two meeting slots, time constraints). Team meetings are Mondays and Fridays at 9 am and some members have unexpected engagements; if people miss them, decisions get made without everyone. Resolved: Team takes meeting notes and posts them in our discord server.
