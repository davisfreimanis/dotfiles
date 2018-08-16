# Davis' dotfiles
## Requirements
* git
* zsh
* oh-my-zsh
* tmux
* curl
* xclip
* powerline

## Installing requirements
`sudo apt-get install -y zsh git tmux curl xclip`

Set the default shell to zsh and then relog the user

`chsh -s $(which zsh)`

Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Install powerline and compatible fonts [http://powerline.readthedocs.io/en/master/installation/linux.html](Powerline installation)

### Git
To finish the setup of the gitconfig, the user has to add git credentials to the file git/gitconfig.local.sample

## Installing dotfiles

`./setup.sh`

Install tmux plugins by issuing the command `prefix + I` when inside tmux environment.


