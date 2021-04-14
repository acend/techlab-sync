#!/bin/bash

FILE=package.json
REPOS_PATH=repos

diff \
  -I '"author":.*' \
  -I '"description":.*' \
  -I '"homepage":.*' \
  -I '"name":.*' \
  -I '"url":.*' \
  -I '"version":.*' \
  ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}

meld ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}
