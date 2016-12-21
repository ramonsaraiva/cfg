export ZSH=/Users/ramon/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export SSH_KEY_PATH="~/.ssh/rsa_id"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

NEW_RELIC_CONFIG_FILE=~/.newrelic.ini

export NVM_DIR="/Users/ramon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias ca="source ~/.ca"
alias qca="pyenv deactivate ca"

function myclone() {
    git clone git@github.com:ramonsaraiva/$@
}

alias gcm=myclone
alias celp="./manage.py celery purge"
alias cel="./manage.py celeryd -l info -Q celery"
alias red="redis-server"
alias rs="./manage.py runserver"
