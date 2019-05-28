#!/bin/bash
set -e

# This is manifest file that describes what modules we need to initialize.
# Modules are initializes using syntax 'initmodule module-name'

# Initialize template modules
initmodule @repo/webshop-apigateway
initmodule @repo/webshop-products
initmodule @repo/webshop-users
initmodule @repo/webshop-payment
initmodule @repo/webshop-orders

# run docker compose to bring all services up&running
initmodule @run/all