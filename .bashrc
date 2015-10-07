#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'

fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias rm='trash-put'

PS1='[\u@\h \W]\$ '

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.z.sh ];then
    . ~/.z.sh
fi

#if [ -n "$FBTERM" ]; then
#	export TERM=fbterm;
##	#echo -en "\e[3;0;0;0;0}" #black
##	echo -en "\e]P0000000" #black
##	echo -en "\e]P1803232" #darkred
##	echo -en "\e]P25b762f" #darkgreen
##	echo -en "\e]P3aa9943" #brown
##	echo -en "\e]P4324c80" #darkblue
##	echo -en "\e]P5706c9a" #darkmagenta
##	echo -en "\e]P692b19e" #darkcyan
##	echo -en "\e]P7ffffff" #lightgray
##	echo -en "\e]P8222222" #darkgray
##	echo -en "\e]P9982b2b" #red
##	echo -en "\e]PA89b83f" #green
##	echo -en "\e]PBefef60" #yellow
##	echo -en "\e]PC2b4f98" #blue
##	echo -en "\e]PD826ab1" #magenta
##	echo -en "\e]PEa1cdcd" #cyan
##	echo -en "\e]PFdedede" #white
##	clear #for background artifacting
#fi
