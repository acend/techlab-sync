#!/bin/bash

BASE_REPO="acend/hugo-training-template"
VISUAL_DIFF=false
REPORTS_PATH=reports
REPOS_PATH=repos
SCRIPT_DIR=$(dirname $0)
FILES="action config contributing dockerfile gitignore gitmodules helm husky license markdownlint package readme renovate"

if (($# == 0)); then
  echo "no input, using default values"
  REPOS=$(<${SCRIPT_DIR}/../repos.txt)
else
  REPOS=$1
fi

# functions

diff_files () {
    repo=$1
    for file in $FILES; do
        echo "## compare file: ${file} (${repo}) ##"
        DIFF_OUTPUT=$(${SCRIPT_DIR}/diff-${file}.sh ${REPOS_PATH} ${BASE_REPO} ${repo} ${VISUAL_DIFF} 2>&1)
        if (($? != 0)); then
          # diff detected
          echo "$DIFF_OUTPUT" > ${REPORTS_PATH}/${repo}/${file}.diff
          cat ${REPORTS_PATH}/${repo}/${file}.diff
        fi
        echo ""
    done
}

diff_repos () {
    for repo in $REPOS; do
        echo "######################################################"
        echo "## compare repo: ${repo} ##"
        echo ""
        mkdir -p ${REPORTS_PATH}/${repo}
        diff_files ${repo}
        echo ""
        echo ""
    done
}

# diff

rm -rf $REPORTS_PATH
diff_repos
