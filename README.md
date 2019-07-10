# .cfg

## setting it up

### apt, X and wm
* update and upgrade apt
```
apt-get update
apt-get upgrade
```

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
*if pavucontrol fails to connect to pulseaudio, run `pulseaudio --start`*

### browser

* install firefox ESR `apt-get install firefox-esr`
* download and install google chrome `dpkg -i ...`

### terminal

* install urxvt terminal `apt-get install rxvt-unicode`
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
* change default shell `chsh -s $(which zsh)`

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
ln -s .cfg/.Xresources .Xresources
ln -s .cfg/.Xinitrc .Xinitrc
ln -s .cfg/.tmux.conf .tmux.conf
ln -s .cfg/.zshrc .zhsrc
ln -s .cfg/.gitconfig .gitconfig
ln -s .cfg/.i3 .config/i3/config
ln -s .cfg/.i3status.conf .config/i3/.i3status.conf
```
* install docker `https://docs.docker.com/install/linux/docker-ce/debian/`
* install docker-compose `https://docs.docker.com/compose/install/`
* docker post install `https://docs.docker.com/install/linux/linux-postinstall/` 
