#!/bin/sh

dotfiles_dir=~/dotfiles
backup_dir=~/dotfile_backup

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
mkdir -p $backup_dir
mv ~/.vim $backup_dir/.vim
mv ~/.vimrc $backup_dir/.vimrc 
mv ~/.zshrc $backup_dir/.zshrc
mv ~/.tmux.conf $backup_dir/.tmux.conf
mv ~/.gitconfig $backup_dir/.gitconfig
mv ~/.gitconfig.local $backup_dir/.gitconfig.local

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
