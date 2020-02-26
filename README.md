# .cfg

## setting it up

### apt, terminal, X and wm
* update and upgrade apt
```
apt-get update
apt-get upgrade
```
* install urxvt terminal `apt-get install rxvt-unicode`
* install alacritty terminal (with cargo for deb)
* install X and i3wm
```
apt-get install xorg i3
apt-get install neovim
```

### boot

* remove grub timeout in `/etc/default/grub`
* install lightdm `apt-get install lightdm`
* configure autologin in `/etc/lightdm/lightdm.conf`

### audio

* install pavucontrol `apt-get install pavucontrol` 
*(if pavucontrol fails to connect to pulseaudio, run `pulseaudio --start`)*

### fonts

* sudo apt install fonts-firacode
* install `Operator Mono` moving files to `~/.local/share/fonts`
* flush fonts cache `fc-cache -fv`
* make sure fonts were installed `fc-list | grep Operator\ Mono`

### browser

* install firefox ESR `apt-get install firefox-esr`
* download and install google chrome `dpkg -i ...`

### dev

* install git & ssh
```
apt-get install git
apt-get install ssh
```
* copy private and public keys to `.ssh/(id_rsa|id_rsa.pub)`
* create .cfg `git clone git@github.com:ramonsaraiva/macfiles .cfg`
* create symlinks from .cfg
```
ln -s ~/.cfg/.xsessionrc .xsessionrc
ln -s ~/.cfg/.Xresources .Xresources
ln -s ~/.cfg/.alacritty.yml .alacritty.yml
ln -s ~/.cfg/.i3 .config/i3/config
ln -s ~/.cfg/.i3status.conf .i3status.conf
ln -s ~/.cfg/.tmux.conf .tmux.conf
ln -s ~/.cfg/.zshrc .zshrc
ln -s ~/.cfg/.gitconfig .gitconfig
```
* install [docker](https://docs.docker.com/install/linux/docker-ce/debian/)
* install [docker-compose](https://docs.docker.com/compose/install/)
* docker [post install](https://docs.docker.com/install/linux/linux-postinstall/)

### terminal tooling

* install tmux & plugins
```
apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
* install zsh & ohmyzsh
```
apt-get install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
* install zsh plugins (autosuggestions, etc..)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
* change default shell `chsh -s $(which zsh)`
* install ranger `apt-get install ranger`

### vim

* create .vim `git clone git@github.com:ramonsaraiva/dotvim .vim`
* create symlink `ln -s ~/.vim/.nvimrc .config/nvim/init.vim`
* download vim-plug
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
* open vim and run `:PlugInstall`
* install ripgrep `apt-get install ripgrep`

### python

* install pyenv `git clone https://github.com/pyenv/pyenv.git ~/.pyenv`
* install pyenv virtualenv `https://github.com/pyenv/pyenv-virtualenv`

### aesthetics

* install feh `apt-get install feh`
* move a background image to `~/wp/default.jpg`
* screenshot manager `apt-get install flameshot`
