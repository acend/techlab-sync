#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=.github/workflows/
diff \
  -I '#.*' \
  -I 'acend version.*' \
  -I 'args:.*' \
  -I 'image-ref:.*' \
  -I 'namespace:.*' \
  -I 'puzzle versio.*' \
  -I 'quay.io.*' \
  -I 'TRAINING_HELM_NAME*' \
  -I 'TRAINING_NAMESPACE*' \
  ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}

after_diff
