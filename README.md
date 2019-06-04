[![Build Status](https://travis-ci.org/pylipp/binaries.svg?branch=master)](https://travis-ci.org/pylipp/binaries)

Provide useful, customized programs - built in Travis CI and deployed onto GitHub (target platform: Linux on x64 architecture)

# Programs

## `st`

[Simple terminal](https://st.suckless.org/), customized (solarized color scheme, clipboard interaction).

### Installation

1. Download package from [releases page](https://github.com/pylipp/binaries/releases) and extract.
1. Move `st` to somewhere in your `$PATH`.
1. Run `tic -sx st.info`. More info in the [st](https://git.suckless.org/st/file/README.html) repo.
1. Move `st.1` to somewhere in your `manpath`.

# Deployment

Run `./deploy.sh`. The version number is automatically incremented and used to tag the latest commit.

# Prerequisites

## travis CLI

More info [here](https://github.com/travis-ci/travis.rb#installation). Run (tested on Debian Stretch):

    sudo apt-get update
    sudo apt-get install ruby ruby-dev
    # https://stackoverflow.com/a/29317694
    sudo apt-get install build-essential bison openssl curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev autoconf libc6-dev ncurses-dev automake libtool
    gem install travis -v 1.8.10 --no-rdoc --no-ri
    travis version

Create secure GitHub OAuth token:

    travis setup releases
