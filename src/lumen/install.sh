#!/usr/bin/env bash

set -e

source ./library_scripts.sh

# nanolayer is a cli utility which keeps container layers as small as possible
# source code: https://github.com/devcontainers-extra/nanolayer
# `ensure_nanolayer` is a bash function that will find any existing nanolayer installations,
# and if missing - will download a temporary copy that automatically get deleted at the end
# of the script
ensure_nanolayer nanolayer_location "v0.5.6"

echo $nanolayer_location

$nanolayer_location install apt build-essential
$nanolayer_location install apt pkg-config
$nanolayer_location install apt libssl-dev

LUMEN_VERSION=${VERSION:-latest}

if [ "$LUMEN_VERSION" = "latest" ]; then
  cargo install lumen
else
  cargo install lumen --version "$LUMEN_VERSION"
fi
