#!/bin/bash

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# Figure out the absolute path of the dotfiles directory

DOTFILESDIRREL="$(dirname "$0")"
cd $DOTFILESDIRREL/..
DOTFILESDIR="$(pwd -P)/dotfiles"

# Symlink directory to Home directory

ln -sf "$DOTFILESDIR" "$HOME/.dotfiles"
cat "$DOTFILESDIR/.bash_profile” >> "$HOME/.bash_profile”

