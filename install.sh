#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles"

echo "Linking git config..."
ln -sf "$DOTFILES/git/gitconfig" ~/.gitconfig
ln -sf "$DOTFILES/git/gitignore_global" ~/.gitignore_global

echo "Linking shell config..."
ln -sf "$DOTFILES/shell/zshrc" ~/.zshrc

echo "Making scripts executable..."
chmod +x "$DOTFILES/bin/"*

echo "Done. Restart your terminal 🚀"
