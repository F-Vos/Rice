# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

#!/bin/bash
export PS1="\[\033[38;5;8m\]\A\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;243m\]-\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;223m\]\u@\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]\[\033[38;5;3m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;4m\]\\$ \[$(tput sgr0)\]"
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
