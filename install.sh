#!/bin/sh
repos_dir=~/my_env/
dotfiles_dir=$repos_dir/dotfiles
target_rc=~/.bash_profile
cat aliases/_bash_profile >> $target_rc

# Static Links
ln -s $dotfiles_dir/emacs ~/.emacs
ln -s $dotfiles_dir/gitconfig ~/.gitconfig
ln -s $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -s $dotfiles_dir/vimrc ~/.vimrc
