#!/bin/bash

REPOS="acend/hugo-training-template puzzle/amm-techlab puzzle/jenkins-techlab"
REPOS_PATH=repos

rm -rf $REPOS_PATH
mkdir -p $REPOS_PATH

# Iterate the string variable using for loop
for repo in $REPOS; do
    echo cloining $repo
    git clone https://github.com/${repo} --depth 1 ${REPOS_PATH}/${repo}
done
