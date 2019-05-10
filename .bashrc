# If not running interactively, don't do anything
[[ $- != *i* ]] && return

umask 0077

PS1='[\u@\h \W]\n\$ '
PS2='>> '
PS3='>>> '
PS4='>>>> '

alias ls='ls --color=auto'
alias l='ls -ahl'
alias pu='pushd'
alias po='popd'
alias d='dirs -v'
alias habitat='/usr/bin/git --git-dir=/home/jay/gits/habitat/ --work-tree=/home/jay'

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

shopt -s histappend
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=100000
export HISTFILESIZE=1000000
export HISTIGNORE="ls:ps:history"

export PROMPT_COMMAND='history -a'

export EDITOR=nvim
export PAGER=less

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31'

source $HOME/.pyenv/global/bin/activate
eval "$(rbenv init -)"
