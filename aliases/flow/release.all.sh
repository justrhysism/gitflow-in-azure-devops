#!/bin/bash

# Parameters 
BRANCH=$1;

# Imports
. $HOME/gitflow/modules/flow.sh;

# Validations
verifyInGitRepo;
verifyBranchNameProvided $BRANCH;

# Process
git flow.release.start $BRANCH;
git flow.release.publish;