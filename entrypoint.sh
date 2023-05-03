#!/bin/sh

set -e
git config --global --add safe.directory "${GITHUB_WORKSPACE}"

tag=${INPUT_TAG}
message=${INPUT_MESSAGE}

git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

git tag -a "${tag}" -m "${message}"
git push origin "${tag}"
