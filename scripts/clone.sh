#!/bin/bash

if (($# == 0)); then
  echo "no input, using default values"
  REPOS="acend/argocd-training acend/container-basics-training acend/helm-basics-training acend/kubernetes-basics-training acend/openshift-4-ops-training puzzle/amm-techlab puzzle/gitlab-ci-cd-training puzzle/jenkins-techlab puzzle/quarkus-techlab"
else
  REPOS=$1
fi

REPOS="acend/hugo-training-template ${REPOS}"
REPOS_PATH=repos

rm -rf $REPOS_PATH
mkdir -p $REPOS_PATH

# Iterate the string variable using for loop
for repo in $REPOS; do
    echo cloining $repo
    git clone https://github.com/${repo} --depth 1 ${REPOS_PATH}/${repo}
done
