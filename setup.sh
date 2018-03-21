#!/bin/sh

dotfiles_dir=~/dotfiles

# Deleting old dotfiles
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1

# Linking new dotfiles
ln -sf $dotfiles_dir/vim/vimrc ~/.vimrc
ln -sf $dotfiles_dir/zsh/zshrc ~/.zshrc

echo "Installation complete"
