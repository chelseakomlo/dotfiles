#!/bin/bash

# setting up a new osx machine

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "installed homebrew"

# install necessary packages
brew install tmux direnv
brew install gnupg gnupg2
brew install mutt
brew install tor
brew install torsocks

# Install prerequisites for running Pond
brew install go gtk+3 gtkspell3 mercurial

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "installed vundle"

# create new parent dotfiles
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
echo "set up vimrc"

# create a new bashrc
cp .bashrc ~/.bashrc
echo "set up bashrc"

cp .tmux.conf ~/.tmux.conf
echo "set up tmux conf"

git config --global core.editor /usr/bin/vim
echo "configured git"

echo "done"




