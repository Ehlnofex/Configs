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

# Initialize the prompt
autoload -U promptinit
promptinit

# Show informations concerning versionning tools
autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{red}:%f%F{yellow}%r%f'
zstyle ':vcs_info:*' enable git svn

precmd () {
if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
zstyle ':vcs_info:*' formats '%F{cyan}[%b%c%u%f%F{cyan}]%f'
} else {
zstyle ':vcs_info:*' formats '%F{cyan}[%b%c%u%f%F{red}●%f%F{cyan}]%f'
}
vcs_info
}

# Versionning tool detection (NB: mercurial and svn are disabled)
function prompt_char {
git branch >/dev/null 2>/dev/null && echo 'git' && return
#hg root >/dev/null 2>/dev/null && echo 'hg' && return
#svn info >/dev/null 2>/dev/null && echo 'svn' && return
echo '%#'
}

# Prompt extension
setopt prompt_subst

# Right side of the prompt (versionning tool infos)
RPROMPT='%F{yellow}${vcs_info_msg_0_} %(!.%F{red}$(prompt_char)%f.$(prompt_char)) %F{white}'

# Set the prompt
prompt adam2 green white

############################
# Prompt extension
#setopt prompt_subst

#autoload -U promptinit
#promptinit

# Left prompt definition
#PROMPT="(%n@%M) in (%d) %# "

# Right prompt definition
#RPROMPT="[%T | %W]"

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
alias emacs='emacs -nw'

##########
#
# Exports
#
####

export EDITOR='vim'

export PATH=$PATH

# EOF
