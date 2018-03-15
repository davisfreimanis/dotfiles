#!/bin/sh

dotfiles_dir=~/dotfiles

# Deleting old dotfiles
sudo rm -rf ~/.vimrc > /dev/null 2>&1

# Linking new dotfiles
ln -sf $dotfiles_dir/vimrc ~/.vimrc

echo "Installation complete"
