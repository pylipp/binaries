#!/bin/bash

set -ev

git clone https://github.com/universal-ctags/ctags
cd ctags
git checkout 3fdf28bc

./autogen.sh
./configure --prefix=$HOME/.local
make

# Bundle executable and man page
tar -czf uctags.tar.gz ctags man/ctags.1
