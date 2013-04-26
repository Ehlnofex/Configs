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
autoload -U compinit
compinit

# Autocompletion styles and improvements
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BNo results found for %d%b'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

# Don't suggest elements which are already present while using rm, mv or cp
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:mv:*' ignore-line yes
zstyle ':completion:*:cp:*' ignore-line yes

# Caching completion (useful for huge commands)
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache

# Improved kill
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# Completion colors
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors 'reply=( "=(#b)(*$VAR)(?)*=00=$color[green]=$color[bg-green]" )'
zstyle ':completion:*:*:*:*:hosts' list-colors '=*=30;41'
zstyle ':completion:*:*:*:*:users' list-colors '=*=$color[green]=$color[red]'
zstyle ':completion:*' list-colors ''

# Non-case-sensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'

# Ignore following files
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' \
    '*?.old' '*?.pro'

##########
#
# Prompt
#
####

# Prompt extension
setopt prompt_subst

autoload -U promptinit
promptinit

# Left prompt definition
PROMPT="(%n@%M) in (%d) %# "

# Right prompt definition
RPROMPT="[%T | %W]"

# PS1 environment variable
#export PS1="test ps1"

##########
#
# History configuration
#
####

HISTFILE=$HOME/.history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
setopt appendhistory

# Ignore duplicates
setopt hist_ignore_all_dups

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
unsetopt hist_beep
unsetopt list_beep

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

alias up='cd ..'

alias svim='sudo vim'

##########
#
# Exports
#
####

export EDITOR='vim'

export PATH=$PATH

# EOF
