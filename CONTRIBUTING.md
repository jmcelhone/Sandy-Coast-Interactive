# Contributing Guide

When adding new code, review the code style and currently existing code to reduce future headaches from having to make significant changes to your code. Ensure code is well commented when added so that all contributors can understand it.
When checking your code, please run our tests in (testing file name) to ensure no conflicts arise before pushing changes. Look over your code and ensure it is well commented so future contributors can quickly make changes. Before release, have a talk with whatever team you are working with to ensure that your additions to the code base are adequate.

## Code of Conduct

Stay polite and patient with each other. If you have any conflict in terms of time or work, let your team know ASAP. If you completed
sections of work that people are waiting on, let them know when you have it submitted! It is better to overcommunicate rather than under, it keeps everyone on track and makes it easy to track progress for each stage of development.

## Getting Started

Requires Godot 4.7.2-stable (standard build) and Git. Clone the repo, open Godot, click Import, select project.godot, and press F5 to run. See the README for details.

## Branching & Workflow

At the current moment, pushes within the Github repository should go to a branch before being merged into main. For merging a branch, at least one person should review the changes before allowing the merge into main to go through. Rebasing should happen fairly regularly during your coding process to ensure that you don't try and merge conflicts into the code.

## Issues & Planning

An issue should include a user story and a description of how a finished result looks. An example of this is "As a user I want to be able to play the Bird Nesting Game when I push the play button" and the description of a finished result would be "When the user clicks on the done button on the bottom middle of the screen, the button should dissapear and the screen should swap to the main gameplay screen". Added qualities and measurements can be added such as "the program should finish this task within 2 seconds of user input". When writing this issue, give a list of prerequisited in the code that must be finished before this is implemented. Also add a given time estimate of how long you think this part of the project will take, note that this is not necessary but is good practice since future jobs of your might require this. Building the habit early can be helpful! For triage of issues, we should specify whether an issue is necessary or preferred. Necesarry issues should be taken care of before preferred is touched.

## Commit Messages

Commit messages should state what in the codebase was changed and where that change occurs in the files.
For example, let us say I deleted a few print statements from my function called "number_reader_2000()" and I changed some tests to be more accurate to what we are testing. A commit message for this might look like this "Title: Deletion and Updating, Description: Deleted print statements in the number_reader_2000() found in file name.py and updated test 5, 7, and 8 in file test_suite.py to be more accurate to what we are testing".

## Code Style, Linting & Formatting 

Follow the official [GDScript style guide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html). Formatter/linter commands (gdtoolkit: gdformat, gdlint) will be added here when CI is set up.

## Testing

Tests will be done as unit tests for various functions and interactions that need to be checked on. The tests can be on one file for each of our group projects. For coverage of what needs to be tested, make sure tests are placed on trouble points that you came across when programming. Common points to make tests are also when opening a file, reading a file, or dealing with directories so that the user is alerted to what part of their setup is not working. Tests can be updated as needed when updating a function or looking over what we have coded for missed coverage. New tests should always be added with a new function in the same pull request. If they can't be done in the same pull request for whatever reason, make a noticeable comment in both the test file and file with your code stating that tests must be created. Tests will be run using our GitHub pipeline when submitting pull requests, but are encouraged to be run during development of new code.


## Definition of Done

Before your code merges onto the main branch, ensure that there are no conflicts with the current code base. When submitting a pull request, have at least one other contributor look over your changes and approve it. If we have a test suite, the code should run against it without any unexpected or unwanted behaviors. After you merge your approved pull request, update the documentation of our readme file or any other documentation files that are needed (such as our changelog). 

## Contribution Norm

For the end of every sprint, every partner is expected to contribute at least something in terms of code, writing, communicating, and/or creation of needed materials. This work can exist in multiple areas such as our GitHub repository for code, a google drive folder for written work and visual demos of our project. An accepted contribution is one where each other group member can say that they are satisfied with the amount of work you put into the project. If you fall short on your assigned part of a project, it is your responsibility to find someway to make up for it and discuss that proposed solution with your group. 

## Pull Requests & Reviews 

For pull requests, a strict template is not required. You should explain what was changed and explain and trouble spots that you want your reviewer to pay special attention to. There isn't really a size limit to the request, just make sure you give enough information about your code without writing an essay for it. 
As a reviewer, it is your job to look for parts of the code that are either confusing, redundant, or overcomplicated for what it needed. When you find these parts in the code, point them out and create a solution that the writer of the pull request could implement. Only one reviewer is needed to look over a request and approve it. Another reviewer can be requested as needed but this is optional. The pull request must also pass the GitHub pipeline that will have our linting standard and test suite run against it. If you accidentally create a pull request that does not pass this, simply add a comment to the request stating the mistake and mark the pull request as draft or close it to the best of your ability. Once this is done, fix the issues that were existing in your pull request and reupload the corrected pull request.

## CI/CD

Both the test suite and linter should pass before merge and release. Pipeline definitions will be in .github/workflows/.


## Security & Secrets

With dependencies, when we start our programming we will take note of which version our dependencies are. This way, if issues occur when starting the program on a new device we can trace whether the issue could be coming from a version mismatch: Godot 4.7.2-stable

For graphics provided by the Oregon Aquarium, we should avoid inputting this data into AI models. As an additional redundant comment, do not put sensitive information into AI models. Do not give the AI your SSN, or email, or address, use common sense!
If a vulnerability in the code is found that could release these graphics without our permission, please send a message either in discord or microsoft teams pointing out the issue. It is preferred to post a proposed solution with your find. However it is not strictly required.

## Documentation Expectations 

When we are reaching the end of a sprint, we should update our changelog. When we are pushing out a version of our program, we should update both the changelog and README file. Docstrings should be fairly detailed so that comments are only needed for tricky and hard to read lines.


## Release Process

For creating new versions of our codebase we can follow Semantic Versioning 2.0.0 standards found at https://semver.org/. We tag these versions as either Major, Minor, or a Patch depending on how the code was altered. Our changelog can follow the format of "keep a changelog" found on https://keepachangelog.com/en/1.1.0/. Our new changelog should be updated preferably near the end of each sprint when changes are being finalized. When rolling back to a different version due to a bad update, make note of it in the changelog and explain why it was done.

## Support & Contact

For contacting each other we should use our discord channel titled "Sandy Coast Aquarium Capstone" or Microsoft teams. With Discord a response can be expected within at least 48 hours, Microsoft teams is a 72 hour time period for when you should respond when requested to do so. Questions can be asked in either channel, and project focused questions should be asked in their project channel instead of the general one as to make communication easier to track. 

