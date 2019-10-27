#!/bin/bash

set -ev

git clone https://github.com/jonas/tig
cd tig
git checkout tig-2.4.1

./autogen.sh
./configure
make prefix=~/.local

# Bundle executable, completion scripts and man page
tar -czf tig.tar.gz tig tig.1 tigmanual.7 tigrc.5 contrib/tig-completion.zsh contrib/tig-completion.bash
