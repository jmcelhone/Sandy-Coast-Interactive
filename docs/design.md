# Design

## Introduction and Goals

The goal of this project is to develop a touchscreen kiosk application for the Oregon Coast Aquarium's Sandy Coast gallery. The application will provide visitors with two interactive educational experiences: Explore a Habitat and Raise a Nest.

The application will be developed using Godot and designed to run on a Raspberry Pi 4 connected to the provided touchscreen. Both activities will be integrated into a single application, sharing common navigation, interface conventions, and kiosk functionality.

The design of the user interface, user experience, educational content, and aspects of the game design will be informed by the interpretive plans provided by the Aquarium and its graphic design guidelines. These materials will help ensure that the application communicates the intended educational messages and maintains consistency with the Aquarium's existing visual identity.

The application must be intuitive for visitors of different ages, reliable during extended unattended operation, and maintainable by Aquarium staff.

The functional and nonfunctional requirements are documented in [`../requirements.md`](../requirements.md).

Primary design goals:
- Provide two educational activities within one application.
- Follow the Aquarium's interpretive plans and graphic design guidelines.
- Deliver responsive touchscreen interactions on the target hardware.
- Operate offline without requiring an internet connection.
- Support automatic startup, fullscreen operation, inactivity reset, and recovery from application failures.
- Allow Aquarium staff to update educational content without modifying application source code.
- Keep the application lightweight and straightforward to maintain and redeploy.

## Constraints

The application is intended to run on a Raspberry Pi 4 with a provided touchscreen. Its CPU, memory, graphics capabilities, storage, and display characteristics must be considered when designing the application.

Godot has been selected as the application framework. The team must verify that the selected Godot version, exported application, and required features work correctly on the target hardware.

The application must support:
- Touchscreen interaction without requiring a keyboard or mouse during normal visitor use.
- Fullscreen kiosk operation.
- Offline access to all required content and assets.
- Automatic startup after the kiosk boots.
- Return to the starting screen after a period of inactivity.
- Recovery from application failures and system restarts.
- Maintenance by authorized staff.

The application should avoid unnecessary computational overhead, oversized assets, and graphics effects that negatively affect performance.

The Aquarium's interpretive plans and graphic design guidelines will inform the content, user experience, and visual presentation. The design must balance these expectations with the capabilities of the target hardware.

A virtual Raspberry Pi 4 environment is being considered for early testing. Its usefulness and fidelity must be evaluated, and testing on the physical Raspberry Pi 4 will still be necessary to verify touchscreen behavior and actual performance.

## Context and Scope

The system is a public-facing educational kiosk for visitors to the Oregon Coast Aquarium's Sandy Coast gallery.

The application will contain two activities:

- **Explore a Habitat:** Visitors explore a marine habitat and interact with animals or environmental features to discover educational information.
- **Raise a Nest:** Visitors make decisions throughout a bird-nesting game and observe the consequences of their choices.

Both activities will be accessible through a shared application interface. They will use common navigation conventions and return behavior while maintaining independent activity state.

The Aquarium's interpretive plans will help guide the educational objectives, subject matter, and visitor experience. Its graphic design guidelines will inform the application's visual style and presentation. The exact content and visual assets used will be determined in collaboration with the Aquarium and according to the materials provided.

Aquarium staff are also stakeholders in the system's long-term maintenance. The application should support updates to educational content without requiring changes to the underlying program.

The system includes the Godot application, both activities, locally stored educational content and media assets, and the operating-system configuration required for unattended kiosk operation.

Normal operation must not depend on internet access or external online services.

## Solution Strategy

The application will be developed in Godot as a single program containing two independent activities.

Shared functionality will be implemented once wherever practical. This includes the welcome screen, activity selection, navigation, inactivity detection, session reset, and common interface conventions.

Each activity will have its own logic and state:
- Explore a Habitat will manage habitat exploration, interactive objects, and educational information.
- Raise a Nest will manage game stages, visitor decisions, and outcomes.

This structure will reduce duplicated functionality and help both activities present a consistent experience.

The Aquarium's interpretive plans and graphic design guidelines will be used during the design and implementation process. They will help guide the educational content, interaction design, visual presentation, and selected aspects of the nesting game's mechanics.

The application will prioritize efficient rendering, appropriately sized assets, and simple interactions to accommodate the Raspberry Pi 4's hardware limitations.

A virtual Raspberry Pi 4 environment may be used for early development and testing where feasible. The team will evaluate whether it can support the required Godot runtime and provide useful information about application behavior. Final performance and hardware compatibility will be verified on the physical Raspberry Pi 4 and touchscreen.

Kiosk startup, operating-system restrictions, and application recovery will be handled separately from the individual activity logic.

## Building Block View

The application will be organized into a shared application layer and two activity modules.

The shared application layer will provide:
- Welcome screen and activity selection.
- Common navigation.
- Shared interface conventions.
- Inactivity detection and return to the welcome screen.
- Loading educational content and media assets.
- Activity initialization and reset behavior.

The Explore a Habitat module will manage habitat presentation, interactive animals and environmental features, and associated educational information.

The Raise a Nest module will manage nesting stages, visitor choices, game state, and outcome presentation.

Both modules will follow shared navigation and integration conventions while maintaining independent activity state.

Educational content should be separated from application logic wherever practical so that supported content can be updated without modifying the program.

The operating-system configuration, automatic application startup, and application supervision will remain separate from the activity modules.

## Runtime View

When the kiosk starts, the operating system will launch the Godot application in fullscreen mode.

The application will display its welcome screen and allow visitors to select either Explore a Habitat or Raise a Nest.

Each activity will initialize its own state when entered. Visitors will interact with the selected activity and be able to return to the activity selection screen or restart the activity as appropriate.

The application will monitor visitor interaction. When the configured inactivity period expires, it will return to the welcome screen and clear visitor-specific state.

The activities must not interfere with each other's state. Returning to the menu or restarting an activity should not leave unintended state behind for the next visitor.

Touch interactions should provide prompt feedback, and animations must not make the interface unresponsive.

If the application crashes, an operating-system or process-supervision mechanism should restart it where possible.

## Deployment View

The application will be deployed to a Raspberry Pi 4 connected to the provided touchscreen.

The intended deployment consists of:
- Raspberry Pi 4 hardware.
- A compatible Linux operating system.
- A kiosk user and display session.
- The exported Godot application.
- Local educational content and media assets.
- Automatic application startup and an application recovery mechanism.

The application must be able to operate without internet access or development tools installed on the kiosk.

The operating-system configuration will provide fullscreen startup, restrict visitor access to the underlying system, and preserve a maintenance path for authorized staff.

A virtual Raspberry Pi 4 environment is being considered for early testing. The team will determine which parts of the deployment can be validated virtually and which require the physical device. Touchscreen integration, hardware-specific behavior, and final performance must be tested on the actual target hardware.

Deployment documentation will describe installation, startup configuration, maintenance access, application updates, and recovery from failures.

## Crosscutting Concepts

**Performance:** The application must run responsively on the Raspberry Pi 4. Rendering complexity, animation, memory use, and asset sizes should be controlled and tested on the target hardware.

**Maintainability:** Shared functionality should be implemented once and reused by both activities. The application structure and deployment process should be documented for future maintainers.

**Educational consistency:** The content and visitor experience should reflect the Aquarium's interpretive plans and intended educational messages.

**Visual consistency:** The application's visual presentation should follow the Aquarium's graphic design guidelines, subject to the practical requirements of a touchscreen interface.

**Content management:** Educational content and supported media references should be separated from application logic wherever practical. Content updates should not require changes to source code.

**Reliability:** The kiosk must support unattended operation, automatic startup, and recovery from application or system failures.

**Usability:** Visitors should be able to use the application without written instructions or staff assistance. Touch targets, navigation, and content presentation should accommodate children and adults.

**Offline operation:** Required content, assets, and application functionality must be available locally.

**Security:** Visitor access to the operating system should be restricted while authorized staff retain a documented maintenance path.

## Architectural Decisions

The following decisions have been made or are under consideration:

- **Application framework — Godot:** Selected for implementing the shared kiosk application and both activities.
- **Application structure — One program with two activity modules:** The activities will share common navigation and kiosk functionality while maintaining independent activity logic and state.
- **Target hardware — Raspberry Pi 4 with the provided touchscreen:** Application performance and hardware compatibility must be validated on the actual device.
- **Educational and visual design — Aquarium materials:** The Aquarium's interpretive plans and graphic design guidelines will inform content, interaction design, game design, and visual presentation.
- **Testing environment — Virtual Raspberry Pi 4:** Under consideration for early testing, subject to evaluating its compatibility and usefulness.
- **Content management — External content where practical:** The design should allow supported educational content to be updated without modifying application source code.
- **Kiosk configuration — Separate from activity logic:** Operating-system startup, access restrictions, and application recovery will be configured independently of the two activities.

Additional architectural decisions will be documented as they are finalized, including the specific operating system, content format, application supervision mechanism, and deployment process.

## Quality Requirements

The system must satisfy the functional and nonfunctional requirements documented in [`../requirements.md`](../requirements.md).

The primary architectural quality attributes are:

- **Performance:** Responsive interaction and acceptable rendering performance on the Raspberry Pi 4.
- **Reliability:** Stable operation during extended unattended use and recovery after failures.
- **Maintainability:** A clear application structure and documented installation, update, and recovery procedures.
- **Usability:** An intuitive touchscreen experience suitable for the intended visitor audience.
- **Educational quality:** Content and interactions aligned with the Aquarium's interpretive plans.
- **Visual consistency:** Presentation aligned with the Aquarium's graphic design guidelines.
- **Offline operation:** Full access to required functionality without an internet connection.
- **Content maintainability:** Supported educational content can be updated without modifying source code.

These qualities will be evaluated through application testing, target-hardware testing, and observation of visitors interacting with the prototype.

## Risks and Technical Debt

**Raspberry Pi 4 performance:** The target hardware may limit the complexity of animations, effects, or visual assets. A representative Godot prototype should be tested early.

**Godot export and runtime compatibility:** The selected Godot version and export configuration may have hardware-specific limitations. An early build should be deployed and tested on the physical Raspberry Pi 4.

**Virtual testing limitations:** A virtual Raspberry Pi 4 environment may not reproduce the physical device's graphics performance, touchscreen behavior, or peripheral integration. Virtual testing should supplement rather than replace physical testing.

**Touchscreen integration:** Display resolution, orientation, touch input, and interaction behavior must be verified with the provided touchscreen.

**Interpretive and visual requirements:** The Aquarium's plans and graphic guidelines may introduce content or presentation requirements that affect the architecture. These materials should be reviewed early enough to influence the design.

**Integration between activities:** Independent development of the two activities could result in inconsistent behavior or incompatible interfaces. Shared contracts and navigation conventions should be established early.

**Content maintenance:** A poorly designed content format could make routine updates difficult for Aquarium staff. The content-editing workflow should be tested with a non-developer.

**Unattended reliability:** Extended operation may expose crashes, resource leaks, or recovery problems. Long-duration testing is required.

**Deployment and recovery:** The kiosk may become unusable after a system or application failure if recovery procedures are inadequate. Startup, restart, and maintenance procedures must be tested before installation.

## Glossary

**Kiosk:** A dedicated computer system running an application for public use.

**Activity module:** One of the two visitor experiences integrated into the application.

**Explore a Habitat:** The activity in which visitors explore a marine habitat and discover information about animals and environmental features.

**Raise a Nest:** The bird-nesting game in which visitors make decisions and observe their consequences.

**Application shell:** Shared application functionality, including the welcome screen, activity selection, navigation, and session management.

**Interpretive plan:** Aquarium-provided material that guides the educational messages, subject matter, and visitor experience of the exhibit.

**Graphic design guidelines:** Aquarium-provided guidance for visual presentation and consistency with its design standards.

**Kiosk session:** The operating-system session configured to run the visitor-facing application.

**Idle reset:** Returning the application to its welcome screen after a configured period without interaction.

**Target hardware:** The Raspberry Pi 4 and provided touchscreen intended to run the kiosk.