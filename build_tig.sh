#!/bin/bash

set -ev

wget https://github.com/jonas/tig/releases/download/tig-2.4.1/tig-2.4.1.tar.gz
tar xvf tig-2.4.1.tar.gz
cd tig-2.4.1

./autogen.sh
./configure
make prefix=~/.local

# Bundle executable, completion scripts and man page
tar -czf tig.tar.gz src/tig tig.1 tigmanual.7 tigrc.5 contrib/tig-completion.zsh contrib/tig-completion.bash
