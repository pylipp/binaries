![Build Status](https://github.com/pylipp/binaries/workflows/CI/badge.svg)

Provide useful, customized programs - built in GitHub Actions and deployed onto GitHub (target platform: Linux on x64 architecture)

# Programs

## `st`

[Simple terminal](https://st.suckless.org/), customized (solarized color scheme, clipboard interaction).

### Installation

1. Download package from [releases page](https://github.com/pylipp/binaries/releases) and extract.
1. Move `st` to somewhere in your `$PATH`.
1. Run `tic -sx st.info`. More info in the [st](https://git.suckless.org/st/file/README.html) repo.
1. Move `st.1` to somewhere in your `manpath`.

## `uctags`

[Universal ctags](https://github.com/universal-ctags/ctags).

### Installation

1. Remove the exuberant-ctags installation from your system before installing universal-ctags.
1. Download package from [releases page](https://github.com/pylipp/binaries/releases) and extract.
1. Move `ctags` to somewhere in your `$PATH`.
1. Move `ctags.1` to somewhere in your `manpath`.

## `tig`

[tig](https://github.com/jonas/tig)

### Installation

1. Download package from [releases page](https://github.com/pylipp/binaries/releases) and extract.
1. Move `src/tig` to somewhere in your `$PATH`.
1. Move the man page files to somewhere in your `manpath`.
1. Move `contrib/tig-completion.*` to somewhere on your `$fpath` (when using zsh), or source it from `~/.bashrc` (when using bash). See the files for detailed instructions.

## `sxiv`

[sxiv](https://github.com/muennich/sxiv)

### Installation
1. Download package from [releases page](https://github.com/pylipp/binaries/releases) and extract.
1. Move `sxiv` to somewhere in your `$PATH`.
1. Move the man page files to somewhere in your `manpath`.
1. Move the `exec/` directory to `~/.local/share/sxiv`.

# Deployment

Run `./deploy.sh`. The version number is automatically incremented and used to tag the latest commit.
