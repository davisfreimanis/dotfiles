#!/bin/sh

dotfilesDir=~/dotfiles
backupDir=~/.dotfilesBackup

# Cloning submodules
git submodule init
git submodule update

# Download Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Deleting old dotfiles
# sudo rm -rf ~/.vim > /dev/null 2>&1
# sudo rm -rf ~/.vimrc > /dev/null 2>&1
# sudo rm -rf ~/.zshrc > /dev/null 2>&1
# sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
# sudo rm -rf ~/.gitconfig > /dev/null 2>&1
# sudo rm -rf ~/.gitconfig.local > /dev/null 2>&1

# Creating a backup of old dotfiles
mkdir -p $backupDir
mv ~/.vim $backupDir/.vim
mv ~/.vimrc $backupDir/.vimrc 
mv ~/.zshrc $backupDir/.zshrc
mv ~/.tmux.conf $backupDir/.tmux.conf
mv ~/.gitconfig $backupDir/.gitconfig
mv ~/.gitconfig.local $backupDir/.gitconfig.local

# Linking new dotfiles
ln -sf $dotfilesDir/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
ln -sf $dotfilesDir/vim/bundle/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "Vundle installed."

ln -sf $dotfilesDir/zsh/zshrc ~/.zshrc
ln -sf $dotfilesDir/tmux/tmux.conf ~/.tmux.conf

ln -sf $dotfilesDir/git/gitconfig.local.sample ~/.gitconfig.local
ln -sf $dotfilesDir/git/gitconfig ~/.gitconfig

echo "Installation complete"
