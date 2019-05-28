#!/bin/bash
set -e

#
# This init script is used to init this module.
# NOTE: Failure of one command will abort script execution (because of set -e)
#

cd ~/diplomski/apigateway/
mvn clean install -DskipTests
mvn dockerfile:build

echo "'$CURRENT_MODULE' module has been initialized."


