#!/bin/bash

FILE=.markdownlint.json
REPOS_PATH=repos

diff \
  ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}

meld ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}
