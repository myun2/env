#!/bin/sh
#repos_dir=~/my_env
repos_dir=`pwd`
dotfiles_dir=$repos_dir/dotfiles
target_rc=~/.bash_profile
opt=$1

echo -n "Append aliases to your .bash_profile ? (y/n) >"
if [ "$opt" != "-y" ]; then
read input
echo "$input"
if [ "$input" = "y" ] || [ "$input" = "Y" ]; then
  echo cat aliases/_bash_profile
  cat aliases/_bash_profile >> $target_rc
fi
fi

echo -n "Static Link ~/.vimrc -> $dotfiles_dir/vimrc ? (y/n) >"
if [ "$opt" != "-y" ]; then
read input
if [ $input = 'y' ] || [ $input = 'Y' ]; then
  echo ln -is $dotfiles_dir/vimrc ~/.vimrc
  ln -is $dotfiles_dir/vimrc ~/.vimrc
fi
fi

echo -n "Static Link ~/.gitconfig -> $dotfiles_dir/gitconfig ? (y/n) >"
if [ "$opt" != "-y" ]; then
read input
if [ $input = 'y' ] || [ $input = 'Y' ]; then
  echo ln -is $dotfiles_dir/gitconfig ~/.gitconfig
  ln -is $dotfiles_dir/gitconfig ~/.gitconfig
fi
fi

echo -n "Static Link ~/.tmux.conf -> $dotfiles_dir/tmux.conf ? (y/n) >"
if [ "$opt" != "-y" ]; then
read input
if [ $input = 'y' ] || [ $input = 'Y' ]; then
  echo ln -is $dotfiles_dir/tmux.conf ~/.tmux.conf
  ln -is $dotfiles_dir/tmux.conf ~/.tmux.conf
fi
fi

cp -rp $dotfiles_dir/ssh ~/.ssh

scripts/install-git
scripts/install-tmux
scripts/install-vim
scripts/install-rvm
scripts/install-vim-ruby.sh
./vim-bundles-install.sh
