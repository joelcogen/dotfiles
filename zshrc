# ZSH 
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="joelcogen"
plugins=(bundler)
source $ZSH/oh-my-zsh.sh

# ALIASES
alias ll='ls -hl'
alias la='ls -hAl'
alias rc='rails console'
alias rdbm='rake db:migrate'
alias r='rails'
alias rk='rake'
alias rp='bin/rspec'
alias h='heroku'
alias b='bundle'
alias v='vim'
alias g='git'
alias gitcia='git add --all; git commit'

# ENV
export EDITOR='vim'
export BUNDLER_EDITOR='vim'
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$PATH:/opt/homebrew/opt/python@3.11/libexec/bin"
export PATH="/opt/homebrew/opt/postgresql@15/bin/:$PATH"
export SHARP_IGNORE_GLOBAL_LIBVIPS=1

# BREW
HOMEBREW_UPGRADE_CLEANUP=1
eval "$(/opt/homebrew/bin/brew shellenv)"

# RBENV
eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

source ~/.npmrc

# JAVA
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# INSURGATE
alias ig_dbpull='(cd ~/dev/deecide/insurgate-back && bundle exec rake db:pull)'
alias ig_start='(cd ~/dev/deecide/scripts && yarn start)'
alias ig_stop='(cd ~/dev/deecide/scripts && yarn stop)'
ig_rs() {
    (cd ~/dev/deecide/scripts && yarn pm2 restart "$@")
}
ig_stop1() {
    (cd ~/dev/deecide/scripts && yarn pm2 stop "$@")
}
ig_logs() {
    (tail -n100 -f ~/.pm2/logs/$@.log)
}
