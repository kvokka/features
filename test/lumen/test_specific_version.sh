#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

check "lumen version is equal to 1.8.0" sh -c "lumen --version | grep '1.8.0'"

reportResults
