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
alias devops=~/dev/devops/devops.sh
alias dc='docker compose'
alias dce='docker compose exec'
alias kd='kamal deploy'
alias kl='kamal app logs -f'

# ENV
export EDITOR='vim'
export BUNDLER_EDITOR='vim'
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$PATH:/opt/homebrew/opt/python@3.11/libexec/bin"
export SHARP_IGNORE_GLOBAL_LIBVIPS=1
export NODE_EXTRA_CA_CERTS=$HOME/dev/deecide/scripts/ssl/igCA.pem
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

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
alias ig_start='(cd ~/dev/deecide/scripts && docker compose start)'
ig_dbpull() {
    (cd ~/dev/deecide/scripts && docker compose stop back sidekiq && docker compose run --rm --pull never back rake db:pull "$@" && docker compose start back sidekiq)
}
ig_rs() {
    (cd ~/dev/deecide/scripts && docker compose restart "$@")
}
ig_stop() {
    (cd ~/dev/deecide/scripts && docker compose stop "$@")
}
ig_logs() {
    (cd ~/dev/deecide/scripts && docker compose logs -n50 -f "$@")
}
ig_exec() {
    (cd ~/dev/deecide/scripts && docker compose exec "$@")
}
