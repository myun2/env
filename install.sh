#!/bin/sh
#repos_dir=~/my_env
repos_dir=`pwd`
dotfiles_dir=$repos_dir/dotfiles
target_rc=~/.bash_profile

echo -n "Append aliases to your .bash_profile ? (y/n) >"
read input
if [ $ipunt = 'y' ] || [ $ipunt = 'Y' ]; then
  cat aliases/_bash_profile >> $target_rc
fi

echo -n "Static Link ~/.vimrc -> $dotfiles_dir/vimrc ? (y/n) >"
read input
if [ $ipunt = 'y' ] || [ $ipunt = 'Y' ]; then
  ln -is $dotfiles_dir/vimrc ~/.vimrc
fi

echo -n "Static Link ~/.gitconfig -> $dotfiles_dir/gitconfig ? (y/n) >"
read input
if [ $ipunt = 'y' ] || [ $ipunt = 'Y' ]; then
  ln -is $dotfiles_dir/gitconfig ~/.gitconfig
fi

echo -n "Static Link ~/.tmux.conf -> $dotfiles_dir/tmux.conf ? (y/n) >"
read input
if [ $ipunt = 'y' ] || [ $ipunt = 'Y' ]; then
  ln -is $dotfiles_dir/tmux.conf ~/.tmux.conf
fi

echo -n "Static Link ~/.emacs -> $dotfiles_dir/emacs ? (y/n) >"
read input
if [ $ipunt = 'y' ] || [ $ipunt = 'Y' ]; then
  ln -is $dotfiles_dir/emacs ~/.emacs
fi
