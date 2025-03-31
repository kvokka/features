#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

check "aicommit2 --version" aicommit2 --version

reportResults
