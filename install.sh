#!/bin/sh
repos_dir=~/my_env/
target_rc=~/.bash_profile
cat aliases/_bash_profile >> $target_rc

# Static Links
ln -s $repos_dir/_emacs ~/.emacs
ln -s $repos_dir/_gitconfig ~/.gitconfig
ln -s $repos_dir/_tmux.conf ~/.tmux.conf
ln -s $repos_dir/_vimrc ~/.vimrc
