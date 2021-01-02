#!/bin/bash

set -ev

git clone https://github.com/eradman/entr
cd entr
git checkout 4.6

./configure
make

# Bundle main and man page
tar -czf entr.tar.gz entr entr.1
