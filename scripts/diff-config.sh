#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=config/_default/config.toml
diff \
  -I 'github_repo.*' \
  -I 'title.*' \
  -I 'url.*' \
  ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}

after_diff
