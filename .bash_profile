# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export LANG=ja_JP.UTF-8

#PS1="\[\yyyy033[0;32m\][\u@\h \W]$\\[\033[0m\] "
PS1_="\[\033[0;32m\][\u@\h \W]$ "
PS1=$PS1_
alias ps_clear="PS1=\"$\\[\033[0m\] \""

#git config --global core.pager "lv -Ou8"

# Git Aliases
#alias push="git push"
#alias pull="git pull"
function update_br_ps1 {
	cur_br=$(git branch -a 2>/dev/null | grep "^*" | tr -d '\* ')
	#PS1="\[\033[0;32m\][\[\033[0;31m\]$cur_br \[\033[0;32m\]\W]$ "
	#PS1="\[\033[0;32m\][\[\033[0;31m\]$cur_br \033[0m\]\W]$ "
	PS1="\[\033[0;32m\][\[\033[0;31m\]$cur_br \033[0m\]\W]\[\033[0;32m\]$ \033[0m\]"
}
alias add="git add"
#alias revert="git checkout"
function revert {
  git checkout $*
  git reset $*
}
alias co="git commit"
alias m="git commit"
alias comi="git commit"
alias commit="git commit"
alias amend="git commit --amend"
alias am="git commit --amend"
alias br="update_br_ps1; git branch"
alias branch="br"
alias brl="br"
#alias delbr="br -d"
alias delbr="br -D"
alias delbrr="git push origin"
alias switch="git checkout"
#alias rmco="git checkout -b"
alias remote="git remote"
alias remotes="git remote -v"
alias reset="git reset"
alias hardreset="git reset --hard"
alias gitcp="git cherry-pick"
alias gpick="git cherry-pick"
alias gcp="git cherry-pick"
alias cpick="git cherry-pick"
alias status="git status"
alias stat="git status"
#alias sw="git checkout"

function curbr {
	echo $(git branch -a 2>/dev/null | grep "^*" | tr -d '\* ')
}

alias bu="br; update_br_ps1"
function sw {
	switch $*
	update_br_ps1
}
alias ch="sw";
function brsw {
  br $*
	sw $*
}

alias swdev="sw develop; br"
alias swd="swdev"
alias swdev="sw develop"
alias reb="git rebase upstream/develop"
alias rebase="git rebase"
alias rebcon="git rebase --continue"
alias rebab="git rebase --abort"
alias rebabo="git rebase --abort"
alias log1="git log --graph"
#alias graph2="git log --graph --pretty=oneline"
alias log2="git wtf"
alias log="git log"
alias log3="git log -p"
alias ldiff="git diff HEAD"
alias diff="git diff --cached"
alias devdiff="git diff develop..HEAD"
alias curdiff="git diff --cached"
alias diff^="git diff HEAD^"
alias ours="git checkout --ours"
alias theirs="git checkout --theirs"

#alias pull="switch develop; git fetch upstream; git pull"
alias pull="git pull"
#alias pull="pull3"
alias devpull="switch develop; git fetch upstream; git pull"
alias lpull="git pull"
alias upstream="switch develop; git fetch upstream; git pull; rake db:migrate"
alias gitsq="git rebase -i develop"

#alias push="echo `curbr`; git push origin `curbr`"
function push_ {
  curbr_=`curbr`
  echo $curbr_
  git push origin `curbr`
}
alias push="git push"

function rmco_ {
  git checkout -b $1 origin/$1
}
alias rmco="rmco_"

function fbr {
	br_name="feature/$1_$2"
	br $br_name
	echo "Created $br_name"
	switch $br_name
	br
}
alias brf="fbr"

function sbr {
	br_name="spike/$1_$2"
	br $br_name
	echo "Created $br_name"
	switch $br_name
	br
}

#Others...
alias eb="vi ~/.bash_profile"
alias sou="source ~/.bash_profile"
alias hist="history 50"

# tmux Aliases
alias 1="tmux attach -t front"
alias 2="tmux attach -t back"
alias 3="tmux attach -t work"
alias 4="tmux attach -t 4"
alias 5="tmux attach -t 5"
alias at1="tmux attach -t front"
alias at2="tmux attach -t back"
alias at3="tmux attach -t work"
alias ses="tmux list-sessions"
alias det="tmux detach-client"
alias at="tmux attach -t"
alias t="at"

alias tl="tmux ls"
alias tls="tl"
alias tlist="tl"

alias tt="tmux"
alias ns="tmux"
alias nt="tmux"
alias nw="tmux new-window"
alias close="exit"
alias n="tmux next-window"
alias b="tmux previous-window"
alias rns="tmux rename-session"
alias rnt="tmux rename-session"
alias rnw="tmux rename-window"
alias chw="rnw"

alias mouseon="tmux set-option mode-mouse on; tmux set-option mouse-select-window on"
alias mouseoff="tmux set-option mode-mouse off; tmux set-option mouse-select-window off"

alias serv="rake dev:server &"

# Rails
alias gmig="rails generate migration"
alias mig="rake db:migrate"
alias migrate="rake db:migrate"
alias rollback="rake db:rollback"
alias bi="bundle install"
alias vil="vi `ls | awk 'END {print}'`"
