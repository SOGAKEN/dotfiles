#!/bin/sh
set -e

cd ~


# Install some software
# echo "Installing some software & library..."
# brew bundle -v --file=~/dotfiles/Brewfile

#.congigなければ作成
if [ ! -d ~/.config ]; then
	echo "Creating ~/.config directory..."
	mkdir ~/.config
else
	echo ".config already maked"
fi

stow -v -d ~/dotfiles -t ~ karabiner fish tig

echo "Success"
