export ZSH=/Users/ramon/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
    autoenv,
    git,
    vi-mode,
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
export SSH_KEY_PATH="~/.ssh/rsa_id"

eval $(thefuck --alias)

eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init - zsh)"

export NEW_RELIC_CONFIG_FILE=~/.newrelic.ini
export NEW_RELIC_ENVIRONMENT=development

export NVM_DIR="/Users/ramon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PGDATA=/usr/local/var/postgres

function ca() {
    pyenv activate ca
    cd ~/dev/consumeraffairs
}

function sca() {
    pyenv activate ca
    cd ~/dev/consumeraffairs
    find . -name '*.pyc' -delete
    sudo nginx
    mysql.server start
    ./manage.py celery purge
    ./manage.py celeryd -l info -Q celery &
    redis-server &
    ./manage.py runserver
}

function kca() {
    sudo nginx -s stop
    mysql.server stop
    kill $(ps aux | grep '[r]edis' | awk '{print $2}')
    kill $(ps aux | grep '[c]elery' | awk '{print $2}')
    kill $(ps aux | grep '[p]ython' | awk '{print $2}')
}

function workon() {
    pyenv activate $1
    cd ~/dev/$1
}

function myclone() {
    git clone git@github.com:ramonsaraiva/$@
}

function managepy() {
    python manage.py $@
}

function codecov() {
    coverage run manage.py test $1
    coverage xml
    coverage report -m | grep $1
}

alias vim="nvim"

alias gcm=myclone

alias ca=ca
alias sca=sca
alias kca=kca
alias qca="pyenv deactivate ca"
alias wo=workon

alias m=managepy
alias celp="./manage.py celery purge"
alias cel="./manage.py celeryd -l info -Q celery"
alias kcel="kill $(ps aux | grep '[c]elery' | awk '{print $2}')"
alias red="redis-server"
alias rf="redis-cli FLUSHALL"
alias rs="./manage.py runserver"
alias rsp="./manage.py runserver_plus"
alias nrs="newrelic-admin run-python manage.py runserver_plus"
alias cpyc="find . -name '*.pyc' -delete"
alias cov=codecov
