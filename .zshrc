# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Env vars shared by Bash and Zsh
source "$HOME/.env"

# Customize to your needs...
source $HOME/.aliases

# Terminal 256 colors
export TERM="xterm-256color"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"
ZSH_THEME="juanghurtado"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(aws compleat debian docker encode64 git github history-substring-search rbenv vundle zsh)

# fix UTF-8 error in Octopress
# http://alexzeitler.com/blog/2012/01/15/rake-generate-for-octopress-fails-with-invalid-byte-sequence-in-us-ascii-argumenterror/
# https://github.com/imathis/octopress/issues/144
# http://zanshin.net/2011/08/11/switching-to-octopress/
# https://github.com/imathis/octopress/issues/267
# http://pedrovanzella.com/blog/2012/03/02/migrating-wordpress-to-octopress-utf-8-woes/
# http://www.benjiegillam.com/2011/09/octopress-utf-8-issues/
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# tips from the triumvirate
# http://www.drbunsen.org/text-triumvirate.html
# setup zsh for vim
export EDITOR="vim"
bindkey -v
# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# no need to type 'cd' to change dir
setopt AUTO_CD

# fix autocorrect suggesting dotfiles, only for zsh so don't put this in .aliases
# https://news.ycombinator.com/item?id=5692320
alias sudo="nocorrect sudo"

# add source highlighting to LESS
# http://blog.tersmitten.nl/how-to-enable-syntax-highlighting-in-less.html
# solves the error:
# zsh:1: no such file or directory: /usr/share/source-highlight/src-hilite-lesspipe.sh
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# check for updates, init shell
source $ZSH/oh-my-zsh.sh
