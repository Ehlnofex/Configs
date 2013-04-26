##########
#  ______ _     _              __          
# |  ____| |   | |            / _|         
# | |__  | |__ | |_ __   ___ | |_ _____  __
# |  __| | '_ \| | '_ \ / _ \|  _/ _ \ \/ /
# | |____| | | | | | | | (_) | ||  __/>  < 
# |______|_| |_|_|_| |_|\___/|_| \___/_/\_\
#                                          
# Zsh configuration file
#
####                                          

##########
#
# Completion
#
####

# Enabling completion
autoload -Uz compinit
compinit

#Completion styles
zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/thomas/.zshrc'

##########
#
# Command correction
#
####

setopt correctall

##########
#
# Prompt
#
####

autoload -U promtinit
promptinit

# PS1 environment variable

##########
#
# History configuration
#
####

HISTFILE=$HOME/.history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt appendhistory

##########
#
# Miscellaneous settings
#
####

# Auto cd
setopt autocd 

# No match
setopt nomatch

# Disable beeps
unsetopt beep

# Extended globbing
setopt extendedglob 

# Notify
unsetopt notify

# Bindkey
bindkey -v

##########
#
# Alias
#
####

alias ls='ls --color=auto'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -l'
alias lla='ls --color=auto -la'

alias c='clear'
alias ha='sudo halt -p'
alias re='sudo reboot'

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'

# EOF
