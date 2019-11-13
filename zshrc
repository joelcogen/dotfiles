# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="joelcogen"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/Users/jole/dev/platform-tools

alias ll='ls -hl'
alias la='ls -hAl'

# Rbenv =======================================================================
eval "$(rbenv init -)"

# RAILS =======================================================================
alias rs='rails server'
alias rc='rails console'
alias rdbm='rake db:migrate'
alias rdbr='rake db:reset'
alias r='rails'
alias rk='rake'
alias rkts='rake translation:sync'

alias csd='cap staging deploy'
alias h='heroku'

alias b='bundle'

# VIM =========================================================================
alias v='vim'

export EDITOR='atom'
export BUNDLER_EDITOR='atom'

# RSPEC + CUCUMBER ============================================================
alias rp='bin/rspec'
alias brp='bundle exec rspec'
alias cuc='bundle exec cucumber -r features'
alias ats='bundle exec autotest'

# GIT =========================================================================
alias g='git'
alias gitcia='git add --all; git commit'

# POSTGRESQL ==================================================================
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# AUTOJUMP ====================================================================
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Homebrew ====================================================================
HOMEBREW_UPGRADE_CLEANUP=1

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

