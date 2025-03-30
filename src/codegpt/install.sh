set -e

. ./library_scripts.sh

# nanolayer is a cli utility which keeps container layers as small as possible
# source code: https://github.com/devcontainers-extra/nanolayer
# `ensure_nanolayer` is a bash function that will find any existing nanolayer installations,
# and if missing - will download a temporary copy that automatically get deleted at the end
# of the script
ensure_nanolayer nanolayer_location "v0.5.6"

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-extra/features/gh-release:1.0.25" \
    --verbose \
    --option repo='appleboy/CodeGPT' \
    --option binaryNames='codegpt' \
    --option version="$VERSION" \
    --option assetRegex='^CodeGPT-.*(amd64|arm64|arm-5|arm-6|arm-7)$'

echo 'Done!'
