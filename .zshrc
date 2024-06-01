export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.local/bin

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    setxkbmap -option caps:escape
else
    export LANG=en_US.UTF-8
    export LC_CTYPE=en_US.UTF-8
fi

plugins=(brew docker git jira npm python redis-cli urltools vi-mode zsh-autosuggestions)

ZSH_THEME=""

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init --path)"

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

export NEW_RELIC_CONFIG_FILE=~/.newrelic.ini
export NEW_RELIC_ENVIRONMENT=development

# fnm > nvm
export PATH=$HOME/.local/share/fnm:$PATH
eval "`fnm env`"

export CONTAINER_ENVIRONMENT='self'

export PGDATA=/usr/local/var/postgres

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ramon/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ramon/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ramon/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ramon/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[ -f ~/.cfg/.fzf.zsh ] && source ~/.cfg/.fzf.zsh
[ -f ~/.cfg/.aliases ] && source ~/.cfg/.aliases

[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

export PATH=$PATH:"$HOME/.cargo/bin"
source $HOME/.cargo/env

export PATH=$PATH:/snap/bin
export PATH=$PATH:"$HOME/.local/bin"

set -o vi
