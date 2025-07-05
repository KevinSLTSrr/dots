#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



alias ls='ls --color=auto'
alias grep='grep --color=auto'


#PS1='[\[\033[01;36m\]\u@\h\[\033[00m\] \[\033[01;33m\]\w\[\033[00m\]] \A\n\[\033[01;32m\]$: '

# Define ANSI escape code for Catppuccin Mocha foreground
ROSEWATER_FG='\[\033[38;2;245;224;220m\]'
MAUVE_FG='\[\033[38;2;203;166;247m\]'
RED_FG='\[\033[38;2;243;139;168m\]'
PEACH_FG='\[\033[38;2;250;179;135m\]'
YELLOW_FG='\[\033[38;2;249;226;175m\]'
GREEN_FG='\[\033[38;2;166;227;161m\]'
SAPPHIRE_FG='\[\033[38;2;116;199;236m\]'

# Define ANSI escape code to reset color
RESET_COLOR='\[\033[0m\]'

# Set your PS1 variable
PS1="${SAPPHIRE_FG}[\u@\h] ${PEACH_FG} \w ${MAUVE_FG}[\A]\n${GREEN_FG}  \$ ${RESET_COLOR}"
