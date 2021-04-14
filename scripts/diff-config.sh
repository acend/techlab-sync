#!/bin/bash

FILE=config/_default/
REPOS_PATH=repos

diff \
  -I 'copyright.*' \
  -I 'github_branch.*' \
  -I 'github_repo.*' \
  -I 'languageName.*' \
  -I 'title.*' \
  -I 'url.*' \
  ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}

meld ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}
