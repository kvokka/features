#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

check "aicommit2 version is equal to 2.2.0" sh -c "aicommit2 --version | grep '2.2.0'"

reportResults
