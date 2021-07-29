#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=config/_default/config.toml

IGNORE_LINES='copyright github_branch github_repo languageName modeSwitcher theme title url "# Enable expert mode"'
IGNORE_GREP=""
for value in $IGNORE_LINES; do
  IGNORE_GREP+="${value}.*|"
done
IGNORE_GREP_STRING="${IGNORE_GREP::-1}"

diff -B \
  <(grep -vE $IGNORE_GREP_STRING ${REPOS_PATH}/${BASE_REPO}/${FILE}) \
  <(grep -vE $IGNORE_GREP_STRING ${REPOS_PATH}/${REPO}/${FILE})

after_diff
