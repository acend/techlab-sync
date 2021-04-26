#!/bin/bash

echo 0 $0
echo 1 $1
echo 2 $@
echo h $#


BASE_REPO="acend/hugo-training-template"
REPOS="puzzle/amm-techlab"
VISUAL_DIFF=false
REPOS_PATH=repos
SCRIPT_DIR=$(dirname $0)
FILES="dockerfile gitignore package"

# functions

diff_files () {
    repo=$1
    for file in $FILES; do
        echo "## compare file: ${file} (${repo})##"
        ./${SCRIPT_DIR}/diff-${file}.sh ${REPOS_PATH} ${BASE_REPO} ${repo} ${VISUAL_DIFF}
        echo ""
    done
}

diff_repos () {
    for repo in $REPOS; do
        echo "######################################################"
        echo "## compare repo: ${repo} ##"
        echo ""
        diff_files ${repo}
        echo ""
        echo ""
    done
}

# diff

diff_repos
