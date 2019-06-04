#!/bin/bash

set -ev

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

git clone git://git.suckless.org/st
cd st
git checkout b331da5

# apply patches for solarized color scheme and custom font/fontsize
curl -O https://st.suckless.org/patches/solarized/st-no_bold_colors-20170623-b331da5.diff
curl -O https://st.suckless.org/patches/solarized/st-solarized-both-20170626-b331da5.diff
curl -O https://st.suckless.org/patches/clipboard/st-clipboard-20170925-b1338e9.diff
patch < "$SCRIPT_DIR"/var/st-custom-font-20170928-b331da5.diff
patch < st-no_bold_colors-20170623-b331da5.diff
patch < st-solarized-both-20170626-b331da5.diff
patch < st-clipboard-20170925-b1338e9.diff

make clean all
tar -czf st.tar.gz st
