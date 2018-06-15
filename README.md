# Davis' dotfiles
## Requirements
* git
* zsh
* oh-my-zsh
* tmux
* curl

## Installing requirements
`sudo apt-get install -y zsh git tmux curl`

Set the default shell to zsh and then relog the user

`chsh -s $(which zsh)`

Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

## Installing dotfiles

`./setup.sh`