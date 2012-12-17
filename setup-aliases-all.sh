#!/bin/sh
target_rc=~/.bash_profile
env_dir=~/my_env
aliases_dir=$env_dir/aliases

echo "source $aliases_dir/others" >> $target_rc
echo "source $aliases_dir/git" >> $target_rc
echo "source $aliases_dir/tmux" >> $target_rc
echo "source $aliases_dir/rails" >> $target_rc
