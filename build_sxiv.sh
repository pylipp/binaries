#!/bin/bash

set -ev

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

git clone https://github.com/muennich/sxiv
cd sxiv
git checkout v26

make

# Bundle main and helper executables, and man page
tar -czf sxiv.tar.gz sxiv exec/ sxiv.1
