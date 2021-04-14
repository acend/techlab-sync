#!/bin/bash

FILE=.husky/
SCRIPT_DIR=$(dirname $0)

./${SCRIPT_DIR}/diff.sh ${FILE}
