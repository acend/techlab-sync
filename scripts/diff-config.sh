#!/bin/bash

echo "## diff-config.sh ##"

if (($# == 0)); then
  echo "no input, using default values"
  REPOS_PATH=repos
  BASE_REPO="acend/hugo-training-template"
  REPO="puzzle/amm-techlab"
  VISUAL_DIFF=true
else
  REPOS_PATH=$1
  BASE_REPO=$2
  REPO=$3
  VISUAL_DIFF=$4
fi

FILE=config/_default/

diff \
  -I 'github_repo.*' \
  -I 'title.*' \
  -I 'url.*' \
  ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}

if [ "$VISUAL_DIFF" = true ]; then
  meld ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}
fi
