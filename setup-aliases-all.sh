#!/bin/sh
target_rc=~/.bash_profile
env_dir=~/my_env
aliases_dir=$env_dir/aliases

echo
echo "# Append Aliases by https://github.com/myun2/my_env"
echo "source $aliases_dir/others" >> $target_rc
echo "source $aliases_dir/git" >> $target_rc
echo "source $aliases_dir/tmux" >> $target_rc
echo "source $aliases_dir/rails" >> $target_rc
