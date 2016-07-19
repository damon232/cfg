# enable color support of ls|grep|fgrep|egrep... 
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -A --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls  
alias lsd='ls -A --group-directories-first --color=auto'
#alias ll='ls -l'
#alias l='ls -CF'

# chmod  
alias ch='sudo chmod 755'

# rm    
alias rm='rm -i'

# git alias for dotfile git repository 
alias dfgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
