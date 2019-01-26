if [[ "$OSTYPE" == 'darwin' ]]; then
    HOME=/Users/ramon
elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    HOME=/home/ramon
    setxkbmap -option caps:escape 
fi

plugins=(brew django docker git jira npm pyenv python redis-cli tmux urltools vi-mode zsh-autosuggestions)

ZSH_THEME="muse"
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_AUTOCONNECT=true
ZSH_TMUX_AUTOQUIT=false

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/rsa_id"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init - zsh)"

export NEW_RELIC_CONFIG_FILE=~/.newrelic.ini
export NEW_RELIC_ENVIRONMENT=development

export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export CONTAINER_ENVIRONMENT='self'

export PGDATA=/usr/local/var/postgres

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.cfg/.aliases ] && source ~/.cfg/.aliases
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

set -o vi
