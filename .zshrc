# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/thomas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch
unsetopt beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
#
# Alias

alias ls='ls --color=auto'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -l'
alias lla='ls --color=auto -la'
