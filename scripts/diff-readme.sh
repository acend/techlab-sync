#!/bin/bash

FILE=README.md
SCRIPT_DIR=$(dirname $0)

./${SCRIPT_DIR}/diff.sh ${FILE}
