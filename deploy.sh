#!/bin/bash

set -ev

VERSION=0.2

git tag $VERSION
git push --tags origin master
