#!/bin/bash

cd ~
rm .gitconfig
ln -s dotfiles/gitconfig .gitconfig
echo "source $HOME/dotfiles/bashrc.c9" >> .bashrc
exec $SHELL
