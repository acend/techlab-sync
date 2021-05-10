#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=Dockerfile
diff ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}

after_diff
