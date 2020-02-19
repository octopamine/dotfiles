# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


## HISTORY
# don't put duplicate lines
HISTCONTROL=ignoredups
# append to the history file, don't overwrite it
# this allows for multiple terminals to write to the same histfile
shopt -s histappend
PROMPT_COMMAND="history -a; history -n"
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

## WINDOW
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# promptage
txtblu='\e[0;33m' # Blue
bldblu='\e[1;33m' # Blue
txtrst='\e[0m'    # Text Reset
export PS1="[ \[${txtblu}\]\u\[${bldblu}\]@\[${txtblu}\]\h \[${bldblu}\]\w\[${txtrst}\]] $ "

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -lFh'
alias c='clear'

# convenience aliases
alias vimball="vim -c 'so %' -c 'q'"
alias icanhazip="wget -q -O /tmp/hazip icanhazip.com && cat /tmp/hazip"
alias pycmake="./setup.py build; sudo ./setup.py install"
#alias sizeover="find . -size +10k -exec ls -lh {} \+"

