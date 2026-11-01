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