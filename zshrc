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
plugins=(git osx ruby brew bundler cap github rbenv rails3 textmate)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

alias ll='ls -hl'
alias la='ls -hAl'

# Rbenv =======================================================================
eval "$(rbenv init -)"

export EDITOR='nano'

# RAILS =======================================================================
alias ss='script/server' # start up the beast
alias rs='rails server' # start up the beast 3
alias sc='script/console' # obvious
alias rc='rails console' # obvious 3
alias rdbm='rake db:migrate' # migrations
alias rdbr='rake db:reset' # reset db from schema
alias r='rails'
alias m='mine .'
alias touchmytralala='touch tmp/restart.txt'

# CUCUMBER ====================================================================
alias cucumber='bundle exec cucumber -r features'
alias nightcukes="cucumber; osascript -e 'tell application \"System Events\" to sleep'"

# GIT =========================================================================
alias g='git'
alias gx='gitx --all'
alias gitcia='git add .; git ci -a'

#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#export PATH="/usr/local/bin:$PATH"

alias locomotive=/Users/joel/Progra/Belighted/cms/locomotive_editor/bin/locomotive_editor
