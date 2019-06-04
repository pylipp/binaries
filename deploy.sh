#!/bin/bash

set -ev

VERSION=0.1

git tag $VERSION
git push --tags origin master
