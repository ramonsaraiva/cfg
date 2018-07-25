if [[ "$OSTYPE" == 'darwin' ]]; then
    HOME=/Users/ramon
elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    HOME=/home/ramon
    # capslock to esc
    setxkbmap -option caps:escape 
fi

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="muse"

plugins=(
    autoenv,
    celery,
    django,
    docker,
    encode64,
    git,
    jira,
    pip,
    pyenv,
    python,
    pip,
    redis-cli,
    supervisor,
    vi-mode,
    zsh-autosuggestions,
    web-search,
)

source $ZSH/oh-my-zsh.sh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init - zsh)"

export NEW_RELIC_CONFIG_FILE=~/.newrelic.ini
export NEW_RELIC_ENVIRONMENT=development

export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export CONTAINER_ENVIRONMENT='self'

export PGDATA=/usr/local/var/postgres

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.cfg/.aliases ] && source ~/.cfg/.aliases
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

tmux
