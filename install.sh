#!/bin/bash

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash


# Absolute path of dotfiles directory
DOTFILESDIR="$(pwd -P)"

# Symlink dotfiles directory
ln -sf "$DOTFILESDIR" "$HOME/dotfiles"

# Symlink both runcom files!
ln -sf "$DOTFILESDIR/runcom/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILESDIR/runcom/.zshrc" "$HOME/.zshrc"
