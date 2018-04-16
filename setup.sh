#!/bin/sh

dotfiles_dir=~/dotfiles

# Deleting old dotfiles
sudo rm -rm ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1

# Linking new dotfiles
ln -sf $dotfiles_dir/vim/vimrc ~/.vimrc
ln -sf $dotfiles_dir/vim/bundle ~/.vim/bundle
echo "Vundle installed. Run :PluginInstall to install plugins"

ln -sf $dotfiles_dir/zsh/zshrc ~/.zshrc
ln -sf $dotfiles_dir/tmux/tmux.conf ~/.tmux.conf

echo "Installation complete"
