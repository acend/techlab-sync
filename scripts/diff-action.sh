#!/bin/bash

FILE=.github/workflows/
REPOS_PATH=repos

diff \
  -I 'namespace:.*' \
  -I '# changeme.*' \
  ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}

meld ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}
