#!/bin/bash

source $(dirname $0)/_functions.sh
check_input $@

FILE=README.md

# Regex image name detection: (docker build)(.*)(?<= -t )(.*)(?= .)

BUILD_IMAGE_SED='s/ -t .*$/ -t IMAGE_NAME ./'
RUN_IMAGE_SED='s/8080:8080.*$/8080:8080 IMAGE_NAME/'

diff -B \
  -I '#.*Training' \
  -I '.*Training Description' \
  <(sed -e "${BUILD_IMAGE_SED}" -e "${RUN_IMAGE_SED}" ${REPOS_PATH}/${BASE_REPO}/${FILE}) \
  <(sed -e "${BUILD_IMAGE_SED}" -e "${RUN_IMAGE_SED}" ${REPOS_PATH}/${REPO}/${FILE})

after_diff
