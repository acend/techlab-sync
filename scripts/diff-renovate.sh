#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=renovate.json
# diff ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}
# diff against fix template
diff templates/renovate.json ${REPOS_PATH}/${REPO}/${FILE}

after_diff
