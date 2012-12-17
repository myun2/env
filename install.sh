#!/bin/sh
repos_dir=~/my_env
dotfiles_dir=$repos_dir/dotfiles
target_rc=~/.bash_profile
cat aliases/_bash_profile >> $target_rc

# Static Links
ln -is $dotfiles_dir/emacs ~/.emacs
ln -is $dotfiles_dir/gitconfig ~/.gitconfig
ln -is $dotfiles_dir/tmux.conf ~/.tmux.conf
ln -is $dotfiles_dir/vimrc ~/.vimrc
