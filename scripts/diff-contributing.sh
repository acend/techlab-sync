#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=CONTRIBUTING.md
diff \
  -I '# How to contribute to.*' \
  ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}

after_diff
