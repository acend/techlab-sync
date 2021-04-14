#!/bin/bash

FILE=.gitignore
SCRIPT_DIR=$(dirname $0)

./${SCRIPT_DIR}/diff.sh ${FILE}
