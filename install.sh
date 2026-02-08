#!/usr/bin/env bash

set -e

# Get the directory where this script is located
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Linking git config..."
ln -sf "$DOTFILES/git/gitconfig" ~/.gitconfig
ln -sf "$DOTFILES/git/gitignore_global" ~/.gitignore_global

echo "Setting up shell config..."
# Source custom config from Oh My Zsh config
if ! grep -q "source $DOTFILES/shell/zshrc" ~/.zshrc 2>/dev/null; then
    echo "" >> ~/.zshrc
    echo "# Source custom dotfiles configuration" >> ~/.zshrc
    echo "source $DOTFILES/shell/zshrc" >> ~/.zshrc
    echo "Custom config added to ~/.zshrc"
else
    echo "Custom config already sourced in ~/.zshrc"
fi

if [ -d "$DOTFILES/bin" ]; then
    echo "Making scripts executable..."
    chmod +x "$DOTFILES/bin/"*
fi

echo "Done. Restart your terminal 🚀"
