RFC: \[Accepted \- Project Architecture\]

| Field | Value |
| :---- | :---- |
| Author | Valerie Mirkes |
| Date | 10.25.26 |
| Status | Accepted |
| Decision Date | 10.16.26 |
| Deciders | The Sandy Coast Interactive Capstone Group |
| Superseded By | N/A |

Problem and Context:   
The Sandy Coast Aquarium group consists of six people, with two teams of three developers working to complete two different touch screen interactive experiences on a central kiosk setup. One is an exploration of a habitat experience, the other is a game where the user builds a nest for a bird and follows along its life cycle. The problem at hand is making sure that both of these programs have a consistent interface and properly run on the same hardware. 

This is a time sensitive issue because if both teams develop their games using different input controls, interface layouts, etc., making them compatible later would require a significant amount of work. The decision needed now is how we are going to structure the foundation of this product. There are many similar requirements for each interactive and consolidating the two programs as much as possible could make maintaining the project both easy to document and perform. Though the games are different, the user interface should be consistent in that the user does not become confused on different control mechanisms.

Options:

Option A: Shared Technical Requirements, Different Projects  
This option would include agreeing on shared input controls, scaling, etc., while developing the games independently. This would ensure hardware and logic compatibility without creative restriction, but it would also require heavy coordination and regular testing throughout development. It may also produce a lot of duplicate code. This would be a good decision if the UI of each experience was significantly different, separate games would keep the project more organized and readable. 

Option B: Shared Godot Project  
All work would be done in the same location, which allows easy access to the other team’s logic, UI, etc. This would allow for code reuse, consistent UI design choices, and hardware controls, however it requires much more initial planning and has a higher chance of merge conflicts with six developers working on the same project. This option is most appropriate for two programs running on the same hardware with similar design requirements.

Option C: Do Nothing \- develop both games completely independently  
This option would involve both teams building their products without coming to an agreement on any initial requirements. While this would vastly quicken initial development, the consequences of additional integration work outweigh that benefit. This option would be best if the programs were running on separate hardware, not much coordination would be needed between the two teams.

Analysis:

- Option A keeps both codebases smaller, reducing the chance of merge conflicts, and requires minimal coordination between teams once the technical requirements are established. However duplicate code could become an issue later on with development and maintenance time.  
- Option B reduces duplicate code and uses shared features, which could improve consistency and long term maintenance. The cost of this would be a significant amount of initial planning, and changes to one game could affect the other.  
- Option C has the most risk, as not having shared requirements of any kind may cause compatibility issues.

Recommendation and Verification Plan:  
Given all the benefits and consequences of each option, and the analysis on cost and maintenance, the team recommends proceeding with Option B. This way, the team is able to view each other’s work very easily and allow for shared technical code. While there is the concern of the amount of initial development, much creative logic could be reused, such as menu components and graphics, which reduces the amount of time needed on implementation. To verify that this option worked, the team will test the games on the kiosk hardware, checking that all content scales the same on the screen, all touchscreen controls are consistent, and all interfaces are cohesive. Throughout winter and spring term, the team will also invite different users to test the interactives, asking for their feedback on the experience, and using it to further solidify the structure of the program.

Constraints:  
The budget limits the kiosk to have a specific screen size and hardware options, requiring both games to be compatible with the device. Initially, the team wanted to allow for more than one user to interact with the kiosk at a time, however, this constraint may limit us to a single user game experience. Since Godot is a free open source engine, there are no licensing fees preventing us from using it for this purpose.

Delegation and Validation:

AI tools were not used in the process of developing the options for our hard to reverse problem. For this project, AI is permitted for coding assistance on testing and implementation. One confidentiality requirement is to not share any of the graphics or educational content produced by the artists or educators at the Oregon Coast Aquarium. Jeremy has created a skeleton for the project in the Godot engine, and pushed it to GitHub with proper documentation and validation.

Decision:  
At this time, our team has accepted option B, to use one shared Godot project and reuse various technical and creative features. This decision occurred on 10.16.26 in capstone lecture, once the decision to use Godot as the engine was finalized.  
