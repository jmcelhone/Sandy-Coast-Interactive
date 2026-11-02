# **Sandy Coast Interactive Exhibit Requirements**

# **Problem Statement**

The Oregon Coast Aquarium's Sandy Coast gallery currently receives less visitor attention than other exhibits. Although it features live animals and educational signs, it does not offer a touch-screen interactive. Our team is developing two connected experiences, Explore a Habitat and Raise a Nest, to encourage visitors to spend more time in the gallery while learning about coastal animals and their environments.

# **Functional Requirements**

**FR-1 (Must):** The kiosk shall display a main menu allowing visitors to select either Explore a Habitat or Raise a Nest.

*Acceptance:* Both experiences can be opened from the same menu.

**FR-2 (Must):** Visitors shall be able to navigate both experiences using only touch-screen input.

*Acceptance:* All visitor-facing interactions can be completed without a keyboard or mouse.

**FR-3 (Must):** Explore a Habitat shall allow visitors to select animals or habitat features to view educational information.

*Acceptance:* Selecting an interactive feature displays its corresponding content.

**FR-4 (Must):** Raise a Nest shall present visitors with nesting decisions that affect the outcome of the game.

*Acceptance:* A visitor can make decisions and reach an ending that explains the result.

**FR-5 (Must):** The kiosk shall return to its attract screen after 60 seconds without visitor input.

*Acceptance:* Leave either experience untouched for 60 seconds; the attract screen appears and session progress is cleared.

**FR-6 (Must):** The kiosk shall start the interactive automatically after the machine restarts.

*Acceptance:* Restart the target device; the interactive launches without staff input.

**FR-7 (Must):** The interactive shall load educational text and images from files that Aquarium staff can edit.

*Acceptance:* A staff member changes a content file and sees the change after restarting or reloading the application.

**FR-8 (Must):** Both interactive experiences shall provide a Spanish-language option for visitor-facing text.

*Acceptance: A visitor can select Spanish and complete either experience with its instructions and educational text displayed in Spanish.*

# **Non-Functional Requirements**

**NFR-1 (Must):** Both experiences shall function without an active network connection.

*Acceptance:* Disconnect the network and complete one session of each experience.

**NFR-2 (Must):** The kiosk shall operate unattended for at least two consecutive weeks without requiring manual recovery.

*Acceptance:* Run the exhibit continuously for two weeks and record any crash or manual intervention.

**NFR-3 (Must):** The interface shall remain usable with touch input only on the target kiosk.

*Acceptance:* Complete both experiences on the target hardware without external input devices.

**NFR-4 (Must):** An Aquarium staff member without programming experience shall be able to edit content using written instructions.

*Acceptance:* Ask a staff member to modify a sample fact or image using the provided guide.

# **Constraints**

**C-1:** The finished interactive must run on the Aquarium-approved touch-screen kiosk hardware.

**C-2:** The installed exhibit must operate without an internet or other network connection.

**C-3:** Both interactive experiences must work within the same kiosk setup.

**C-4:** Educational content must be stored in files that Aquarium staff can edit without software development experience.

**C-5:** The exhibit must support unattended gallery operation, including automatic startup after a power interruption.

**C-6:** The interactive must undergo visitor testing in the Aquarium gallery in Newport.

# **Success Metrics**

**SM-1:** Visitor spend more time in the Sandy Coast gallery compared to the baseline measured before.

**SM-2:** At least [50]% of visitors who start an experience reach an ending or finish viewing a feature. *Decision rule:* below 50%, simplify the flow. *Collection:* local session log.

**SM-3:** Unattended runtime of two weeks with zero manual recoveries (from the NFR-2 log).

**SM-4:** A non-programmer completes the sample content edit using the guide (from the NFR-4 test).

# **Non-Goals**

*Proposed. Confirm with the Aquarium.*

- Languages beyond English and Spanish.
- View of where the habitat interactive animals live in the Aquarium (Depends on how this can display in our demo)

# **Open Questions**

- What file format will staff edit (spreadsheet, text file, JSON), and who writes the Spanish text? *Owner:* Team with Aquarium staff, before FR-7 is built.
- How will time spent in the Sandy Coast be measured, and does a baseline exist? *Owner:* Team, before visitor testing in Newport.