#!/bin/bash

set -ev

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Increment version number
VERSION_FILE="$SCRIPT_DIR"/version
VERSION=$(cat "$VERSION_FILE")
((VERSION++))
echo $VERSION > "$VERSION_FILE"
git add "$VERSION_FILE"
git commit --amend --no-edit

git tag v0.$VERSION
git push --tags "$@" origin master
