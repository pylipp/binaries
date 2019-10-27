#!/bin/bash

set -ev

version=2.4.1

wget https://github.com/jonas/tig/releases/download/tig-$version/tig-$version.tar.gz
tar xvf tig-$version.tar.gz
mv tig-$version tig
cd tig

./autogen.sh
./configure
make prefix=~/.local

# Bundle executable, completion scripts and man page
tar -czf tig.tar.gz src/tig tig.1 tigmanual.7 tigrc.5 contrib/tig-completion.zsh contrib/tig-completion.bash
