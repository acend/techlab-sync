#!/bin/bash

REPOS_PATH=repos
SCRIPT_DIR=$(dirname $0)

if (($# == 0)); then
  echo "no input, using default values"
  REPOS=$(<${SCRIPT_DIR}/../repos.txt)
else
  REPOS=$1
fi

REPOS="acend/hugo-training-template ${REPOS}"

rm -rf $REPOS_PATH
mkdir -p $REPOS_PATH

# Iterate the string variable using for loop
for repo in $REPOS; do
    echo cloining $repo
    git clone https://github.com/${repo} --depth 1 ${REPOS_PATH}/${repo}
done
