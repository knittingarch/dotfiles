#!/bin/bash

# Download git completions for bash
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# Download git completions for zsh (if zsh is available)
if command -v zsh >/dev/null 2>&1; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.git-completion.zsh
fi


# Absolute path of dotfiles directory
DOTFILESDIR="$(pwd -P)"

# Symlink dotfiles directory
ln -sf "$DOTFILESDIR" "$HOME/dotfiles"

# Symlink both runcom files!
ln -sf "$DOTFILESDIR/runcom/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILESDIR/runcom/.zshrc" "$HOME/.zshrc"
