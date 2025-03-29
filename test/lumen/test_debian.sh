#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

check "lumen is installed" lumen --version

reportResults
