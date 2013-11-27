#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $HOME

ln -s $DIR/vimrc $HOME/.vimrc
ln -s $DIR/gvimrc $HOME/.gvimrc
ln -s $DIR/vim $HOME/.vim
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
