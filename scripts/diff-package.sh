#!/bin/bash

echo "## diff-package.sh ##"

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

FILE=package.json
IGNORE_LINES='author description homepage name url version'
IGNORE_GREP=""
for value in $IGNORE_LINES; do
  IGNORE_GREP+="(\")${value}+(\":).*|"
done
IGNORE_GREP_STRING="${IGNORE_GREP::-1}"

diff -B \
  <(grep -vE $IGNORE_GREP_STRING ${REPOS_PATH}/${BASE_REPO}/${FILE}) \
  <(grep -vE $IGNORE_GREP_STRING ${REPOS_PATH}/${REPO}/${FILE})

if [ "$VISUAL_DIFF" = true ]; then
  meld ${REPOS_PATH}/${BASE_REPO}/${FILE} ${REPOS_PATH}/${REPO}/${FILE}
fi
