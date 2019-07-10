Update and upgrade apt

```
apt-get update
apt-get upgrade
```

Install X and i3wm

```
apt-get install xorg i3
apt-get install neovim
```

For startup:

(Dualboot only) Remove grub timeout in `/etc/default/grub`

Install lightdm `apt-get install lightdm`
Configure autologin in `/etc/lightdm/lightdm.conf`

For audio management:

apt-get install pavucontrol

For browser:

Install firefox ESR `apt-get install firefox-esr`

Then download google chrome .deb and install it `dpkg -i ...`

Install git & ssh

```
apt-get install git
apt-get install ssh
```

Copy private and public key to .ssh (id_rsa, id_rsa.pub) - should be in lastpass

Create .cfg `git clone git@github.com:ramonsaraiva/macfiles .cfg`

Install tmux & plugins

```
apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install zsh & ohmyzsh

```
apt-get install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Change default shell `chsh -s $(which zsh)`

Create symlinks

ln -s .cfg/.Xinitrc .Xinitrc
ln -s .cfg/.tmux.conf .tmux.conf
ln -s .cfg/.zshrc .zhsrc
ln -s .cfg/.gitconfig .gitconfig
ln -s .cfg/.i4 .config/i4/.i3
ln -s .cfg/.i3status.conf .config/i3/.i3status.conf

Install docker from `https://docs.docker.com/install/linux/docker-ce/debian/`
Install docker-compose `from https://docs.docker.com/compose/install/`

Clone repos..
