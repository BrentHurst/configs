#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please provide arguments."
	echo "Exiting."
	exit 2
fi

vbash=0
vbin=0
vgit=0
vvim=0
force=0

bashrc_local="$HOME/.bashrc.local"
CONFIG_DIR_GBH=$(dirname $(readlink -f $0))
olddir="$CONFIG_DIR_GBH/.old"

echo "export CONFIG_DIR_GBH=\"$CONFIG_DIR_GBH\"" >> $bashrc_local
if [ ! -d $olddir ]
then
	mkdir $olddir
fi


for arg in $@
do
	case "$arg" in
		bash)
			vbash=1
			;;
		bin)
			vbin=1
			;;
		git)
			vgit=1
			;;
		vim)
			vvim=1
			;;
		windows)
			echo Deploying windows isn\'t an option. See README.
			;;
		all)
			vbash=1
			vbin=1
			vgit=1
			vvim=1
			;;
		*)
			echo $arg: Invalid command. Exiting.
			exit 1
			;;
	esac
done


setup_dir () 
{
	realdir="$CONFIG_DIR_GBH/$1"
	for file in $(ls -A $realdir)
	do
		realfile=$realdir/$file
		homefile=$HOME/$file
		if [ -f $homefile ]
		then
			mv $homefile $olddir
		fi
		rm -f $homefile
		ln -s $realfile $homefile
	done

	echo $1: Your $1 files were successfully installed.
}

olddirused=0

if [ $vbash -eq 1 ]
then
	setup_dir "bash"
	olddirused=1
fi

if [ $vbin -eq 1 ]
then
	echo "export PATH=\"$CONFIG_DIR_GBH/bin:$PATH\"" >> $bashrc_local
	echo "bin: The config bin directory has been added to your PATH."
fi

if [ $vgit -eq 1 ]
then
	setup_dir "git"
	olddirused=1
fi

if [ $vvim -eq 1 ]
then
	setup_dir "vim"
	rm -f $HOME/.vimrc
	wget https://raw.githubusercontent.com/chrisdean258/Dotfiles/master/universal/vimrc -O $HOME/.vimrc
	echo "vim: Chris's vimrc was successfully installed."
	olddirused=1
fi




if [ $olddirused ]
then
	echo ""
	echo New config files successfully installed.
	echo Your old files were moved to $olddir before being overwritten.
fi
