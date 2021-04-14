#!/bin/bash

FILE=$1
#REPOS="acend/hugo-training-template puzzle/amm-techlab puzzle/jenkins-techlab"
REPOS_PATH=repos

diff \
  -I '# changeme.*' \
  ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}

meld ${REPOS_PATH}/acend/hugo-training-template/${FILE} ${REPOS_PATH}/puzzle/amm-techlab/${FILE}
