
# RFC: Operating System decision for Aquarium kiosk

| Field | Value |
| --- | --- |
| Author | Ethan Spear|
| Date | 2026-11-22 |
| Status | Proposed |
| Decision Date | (fill when decided) |
| Deciders | Sandy Coast Interactive Team |
| Superseded By | (link, if applicable) |

## Problem and Context

The Sandy Coast Interactive project is to make a fully functional educational touchscreen kiosk for the Sandy Coast exhibit at the Oregon Coast Aquarium. The kiosk should provide an interactive and educational experience for visitors that leads to the average time spent at the Sandy Coast exhibit to rise. It should teach them about the environment and wildlife that the Sandy Coast exhibit is based around. The focus will be on wildlife that is hidden for view and on the Western Snowy Plover. The kiosk will support to interactives in one main program, a habitat exploration, and a bird nesting simulator. The intended audience is all aquarium visitors of varying ages, so the software needs to be accessible, and engaging to a wide variety of users, with an appropriate reading level and content. Installation timeline is currently unknown, week 10 of spring is a soft deadline. 

The habitat exploration will allow users to interact with different animals in different environments (like low and high tide). 
The bird nesting simulator will allow users to make decisions and observe consequences in nesting as a Snowy Plover on the Oregon Coast.
The team also needs to configure the operating system to run as a kiosk. Mainly, that users should not have access outside of the main game program, and that the kiosk is self sustainable, with reboot, auto launch, error recovery, and timeout functions. The hardware to run the kiosk will be a Pi 4. 

The decision needed is which operating system to use to run the kiosk. The provided hardware is currently known to be a Raspberry Pi 4 and some touchscreen. An OS decision will allow the team to configure and test operating system options and run tests of the main Godot program as well. It will also help to establish software requirements and test for any performance issues that could occur in the final deployment. 

Delaying the decision or selecting a suboptimal operating system could create problems during installation at the aquarium. The operating system may introduce difficulties with the executable from Godot, touchscreen input, graphics performance, or kiosk configurations. Fixing these issues could need backtracking through completed code and steps that could have been tested beforehand with a well thought out OS decision. The sooner an optimal decision is made the more time of testing and configuration is available to the team. 

## Options

### Option A: Raspberry Pi OS

Raspberry Pi OS is the official operating system for Raspberry Pi hardware and is the most straightforward option in terms of installation and kiosk configuration [1]. Raspberry Pi OS has a kiosk mode; this is web based but could still be used or used as documentation for custom OS configuration [2]. Raspberry Pi OS is a Linux based OS which is helpful as Godot as documentation for exporting to Linux [8]. It also comes with options for 64 or 32-bit and a non-graphic desktop OS in its Lite version which is useful for embedded systems and could be an option for the team [1]. The option would have familiar Linux environment tools for permissions, system behavior and application startup. The team has recently acquired two Raspberry Pi 4s so testing and installation of the Raspberry Pi OS will be straightforward. 
### Option B: Ubuntu Core

Ubuntu Core is a lightweight Linux operating system that is designed to be used for embedded devices and applications with a dedicated hardware like our kiosk [3,5]. It is supported on Raspberry Pi 4[5] and would have the same familiar Linux tools. Ubuntu Core does have an immutable operating system and snap-based application management which would require learning from the team and possible program changes [5,6]. The main benefit is its focus on security and application confinement and ease of upkeep. It may be best for an application that has to run continuously. Godot support is not a certainty and would need to be tested and investigated. Graphical and touchscreen support would similarly require investigation and implementation. This choice will require additional development time and research when compared to Option A. 

### Option C: Do Nothing

The team could continue to work on the Godot application without deciding on an operating system at this time. The current development process is underway in Godot, and an operating system decision will not change our current work plan. We also only recently acquired hardware for testing. Delaying the decision will give the team more time to test/research the operating system options and to determine whether the aquarium has any existing preferences with their previous Raspberry Pi 4s. The benefit to this is that the team has more time to research and test for an optimal choice. Delaying the choice for too long introduces the risk for limited time for operating system configuration and trouble shooting and bug fixing. This choice should be a temporary option and option A or B should be chosen after hardware testing within the start of winter term. 

## Analysis

Performance wise both option A or B are supported on the Raspberry Pi 4[1,5] and are lightweight options that will not task a long running Pi 4 kiosk. Some concerns arise with using Ubuntu Core or Raspberry Pi OS Lite [1] and having support for the graphical components of the Godot application and the touchscreen hardware. Complexity will be higher using Ubuntu Core because of its application confinement and snap based packaging [5,6], Raspberry Pi OS has conventional Linux tools [1] and is directly support on the hardware. Maintainability is a large requirement for our project, and both options have maintainability tools, but Ubuntu Core is made with maintainability in mind and could prove to be the better choice for this tradeoff. It comes with an immutable operating system, snap management for controlled applications, and transactional updates and rollbacks to help recovery [5]. Implementing proper OS security with Raspberry Pi OS will require manual kiosk configuration and user restrictions, will Ubuntu Core has built in application confinement. Both are free OS the main cost tradeoff will be the higher time for development, testing, and research is using the more complex Ubuntu Core. Godot deployment supports conventional ARM64 Linux export which Raspberry Pi OS will support, but research and testing of the snap packaging and graphic interfaces will be needed for Ubuntu Core [7,8]. 

## Recommendation and Verification Plan

The team will verify the decision with tests like the following:
Hardware and operating system compatibility testing: Test if a successful installation can be done on the Raspberry Pi 4 and that they boot well and multiple times.
Godot export compatibility: Test if a Linux export of a prototype of the Godot main program and be run on the operating system on a Pi 4. If possible test for touchscreen input as well.
Performance testing: Run same application on same hardware with different operating systems (if they pass prev. tests) and test for FPS, memory usage and number of crashes (if any).
Kiosk functionality testing: Configure a prototype kiosk mode or use built in kiosk like functionality. Test that users are locked into the Godot program and that it auto launches and recovers from crashes.
Longevity testing: Run the prototype continuously for several hours (overnight) and at a time with periodic usage. Test that application functions similarity throughout and test rebooting and termination. 

## Constraints

No constraints exist in regard to licensing, data use, IP, or confidentiality.[4]

## Delegation and Validation

AI was used to help with research in finding technical specs and documents for both OS options and Godot support. The found documents and facts were checked by reading the provided documents.

## Decision

Proposed.

## Sources
1. Raspberry Pi OS Documentation
https://www.raspberrypi.com/documentation/computers/os.html
2. Raspberry Pi OS Kiosk Mode Tutorial
https://www.raspberrypi.com/tutorials/how-to-use-a-raspberry-pi-in-kiosk-mode
3. Ubuntu Core System Requirements
https://documentation.ubuntu.com/core/reference/system-requirements/index.html
4. Raspberry Pi Licensing
https://www.raspberrypi.com/licensing
5. Ubuntu Installation on Raspberry Pi
https://ubuntu.com/download/raspberry-pi
6. Ubuntu Core Security Features
https://documentation.ubuntu.com/security/security-features/privilege-restriction/snap-confinement
7. Godot System Requirements
https://docs.godotengine.org/en/stable/about/system_requirements.html
8. Godot Linux Export Tutorial
https://docs.godotengine.org/en/latest/tutorials/export/exporting_for_linux.html
