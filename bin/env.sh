#!/bin/bash
set -e

#
# Set up environment variables for all comands
# 


CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export ROOT_DIR=$( cd "$CURRENT_DIR/.." && pwd )
export MOZZ_WEB_LIB="$ROOT_DIR/lib/library.sh"
export MOZZ_WEB_MODULES_DIR="$ROOT_DIR/modules"
export MOZZ_WEB_BIN="$ROOT_DIR/bin"
export PATH=$PATH:"$ROOT_DIR/bin"

