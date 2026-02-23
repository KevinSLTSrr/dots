#
# ~/.bashrc
#
#export HYPRSHOT_DIR="$HOME/ScreenShots"
export PATH="/home/kevin/.local/bin:$PATH"

# Don't ignore hidden items.
# export FZF_DEFAULT_COMMAND="find . -type f -print -o -type l -print 2> /dev/null | sed s/^..//"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=20000

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias x='clear'
alias hy='hyprland'

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

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Set your PS1 variable
PS1="${SAPPHIRE_FG}[\u@\h] ${PEACH_FG} \w\$(parse_git_branch) ${MAUVE_FG}[\A]\n${GREEN_FG} -> \$ ${RESET_COLOR}"
