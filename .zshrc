export ZSH=/Users/ramon/.oh-my-zsh

ZSH_THEME="muse"

plugins=(
    autoenv,
    git,
    vi-mode,
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
export SSH_KEY_PATH="~/.ssh/rsa_id"

eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init - zsh)"

export NEW_RELIC_CONFIG_FILE=~/.newrelic.ini
export NEW_RELIC_ENVIRONMENT=development

export NVM_DIR="/Users/ramon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export CONTAINER_ENVIRONMENT='self'

export PGDATA=/usr/local/var/postgres

function ca() {
    pyenv activate ca
    cd ~/dev/consumeraffairs
}

[ -f .aliases ] && source .aliases
