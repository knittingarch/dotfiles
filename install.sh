#!/bin/bash

# Download git completions for bash
curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# For zsh, we'll rely on built-in git completion instead of downloading
# The downloaded zsh completion file often causes conflicts
echo "Zsh will use built-in git completion (no download needed)"


# Absolute path of dotfiles directory
DOTFILESDIR="$(pwd -P)"

# Symlink dotfiles directory
ln -sf "$DOTFILESDIR" "$HOME/dotfiles"

# Symlink both runcom files!
ln -sf "$DOTFILESDIR/runcom/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILESDIR/runcom/.zshrc" "$HOME/.zshrc"
