#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR..."

# Check stow is installed
if ! command -v stow &>/dev/null; then
  echo "Installing stow..."
  sudo apt install stow -y 2>/dev/null || sudo pacman -S stow --noconfirm 2>/dev/null || brew install stow 2>/dev/null
fi

cd "$DOTFILES_DIR"
stow nvim
stow tmux
stow zsh

echo "Done! Dotfiles installed."
