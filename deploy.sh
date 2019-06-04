#!/bin/bash

set -ev

VERSION=0.3

git tag $VERSION
git push --tags origin master
