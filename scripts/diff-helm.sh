#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=helm-chart/values.yaml
diff \
  -I '# CHANGEME.*' \
  -I 'appname:.*' \
  -I 'name:.*' \
  -I 'nameOverride:.*' \
  -I 'repository:.*' \
  -I 'tagsuffix:.*' \
  ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}

after_diff
