# makesln
Make c# solution with classlib and xunit(Fluent assertions) using makefile

## How to make it Run
### Bash (Recommended)
  (Recommended: Move the create_sln file to a path near the root folder eg: "/Users/salt-dev/
  Before Using: Find the Path where the create_sln file is located at
  run: bash <PATH-TO-FILE>/create_sln
  eg: bash /Users/salt-dev/create_sln
### Makefile:
  run: make create_sln NAME=<PROJECT-NAME>
  The makefile needs to be in the same folder as the project
