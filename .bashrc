# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export PS1="\[\033[48;5;1m\][\t]\[$(tput sgr0)\]\[\033[48;5;-1m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;208m\]\u\[$(tput sgr0)\]\[\033[38;5;166m\]@\H\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[48;5;23m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[48;5;-1m\] \[$(tput sgr0)\]"
