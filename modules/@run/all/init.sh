#!/bin/bash
set -e

#
# This init script is used to init this module.
# NOTE: Failure of one command will abort script execution (because of set -e)
#

cd "$ROOT_DIR/modules/$CURRENT_MODULE/files"
docker-compose up -d

echo "'$CURRENT_MODULE' module has been initialized."


