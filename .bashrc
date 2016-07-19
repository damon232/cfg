#
# ~/.bashrc for user:damon 
#
#############################


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#set -o noclobber
 
# no duplicates or lines starting with a space
HISTCONTROL=ignoreboth
# append history file; do not overwrite
shopt -s histappend
# history length
HISTSIZE=1000
HISTFILESIZE=2000

# check window size after each command; update LINES/COLUMN values if req'd.
shopt -s checkwinsize

# if set, "**" pattern in pathname expansion will match all files and 
# zero or more  directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# programmable completion; ignore if enabled in /etc/bash.bashrc & sourced by /etc/profile
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

##		         ##
######## VARIABLES ########
##      		 ##

#export PS1="\[\033[30;1m\]\w \$ \[\033[0m\]"
[ -f ~/.config/ranger/rc.conf ] && export RANGER_LOAD_DEFAULT_RC=FALSE
export CDPATH=:$HOME:$HOME/.config:$HOME/documents
export EDITOR=nano
#export C_INCLUDE_PATH=:/usr/local/include:/usr/local/lib
#export PYTHONPATH=$HOME/python/lib

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# colored prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# set title of xterm|rxvt to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u: \w\a\]$PS1"
    ;;
*)
    ;;
esac


##		       ##
######## ALIASES ########
##		       ##

# check for ~/.bash_aliases file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#alias ls='ls -A --color=auto'
#alias lsd='ls -A --group-directories-first --color=auto'
#alias ch='sudo chmod 755'
#alias ll='ls -l'
#alias l='ls -CF'
#alias ch='sudo chmod 755'
#alias rm='rm -i'
#alias dfgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

