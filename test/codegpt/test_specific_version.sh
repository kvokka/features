#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

check "codegpt version is equal to 0.16.0" sh -c "codegpt version | grep '0.16.0'"

reportResults
