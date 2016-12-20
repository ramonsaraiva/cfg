export PS1='\u@\H:\w$ '
export CLICOLOR=1

PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

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
