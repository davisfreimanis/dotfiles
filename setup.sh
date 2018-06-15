#!/bin/sh

dotfiles_dir=~/dotfiles

# Cloning submodules
git submodule init
git submodule update

# Deleting old dotfiles
sudo rm -rm ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitconfig.local > /dev/null 2>&1

# Linking new dotfiles
ln -sf $dotfiles_dir/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
ln -sf $dotfiles_dir/vim/bundle/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "Vundle installed."

ln -sf $dotfiles_dir/zsh/zshrc ~/.zshrc
ln -sf $dotfiles_dir/tmux/tmux.conf ~/.tmux.conf

ln -sf $dotfiles_dir/git/gitconfig.local.sample ~/.gitconfig.local
ln -sf $dotfiles_dir/git/gitconfig ~/.gitconfig

echo "Installation complete"
