#!/bin/bash
cd "$(dirname "$0")"
git pull
git submodule update --init --recursive


function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "install-deps.sh" --exclude "README.md" --exclude "*.sublime-*" --exclude ".gitmodules" --exclude "z" --exclude "oh-my-zsh" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt

chsh -s /bin/zsh
