#!/bin/bash

###################################
## Environment install script     #
## Copyright Ed Grefenstette 2013 #
###################################

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $HOME

echo 'Running environment setup.'
echo ''

echo 'Setting up vim environment'
echo '=========================='
echo ''

#########################
#### Setup vim config ###
#########################
for i in vimrc gvimrc vim; do 
	
	dirpath=$DIR/$i
	opath=$HOME'/.'$i

	echo $i; printf %${#i}s | tr " " "-"; echo '' # print file being considered

	echo 'Checking if' $opath 'exists'
	if [ -e $opath ]; then
		if [ -L $opath ]; then
			echo 'Removing existing link at' $opath
			unlink $opath
		else
			echo 'Saving' $opath 'as' $opath.old
			mv $opath $opath.old
		fi
	fi
	echo 'Linking' $dirpath 'to' $opath
	echo '' # newline
	ln -s $dirpath $opath
done
#########################
#########################

#########################
### Install NeoBundle ###
#########################
if [ ! -e $HOME/.vim/bundle/neobundle.vim ]; then
	echo 'NeoBundle not found. Installing NeoBundle.'
	echo ''
	mkdir -p $HOME/.vim/bundle
	git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
	echo 'NeoBundle installed.'
	echo ''
fi
#########################
#########################

#########################
### Install Powerline ###
#########################
powerlinepath=`pip list | grep -i powerline`
if [ ! -z "$powerlinepath" ]; then 
	pip install --user git+git://github.com/Lokaltog/powerline
fi
#########################