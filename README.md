# .cfg

## setting it up

### apt, terminal, X and wm

- update and upgrade apt

```
apt-get update
apt-get upgrade
```

- install [neovim](https://github.com/neovim/neovim/releases) (prob nightly -> appimage?)
- install [kitty terminal](https://sw.kovidgoyal.net/kitty/binary/)
- install X and i3wm

```
apt-get install xorg i3
```

### boot

- remove grub timeout in `/etc/default/grub`
- install lightdm `apt-get install lightdm`
- configure autologin in `/etc/lightdm/lightdm.conf`

### audio

- install pavucontrol `apt-get install pavucontrol`
  _(if pavucontrol fails to connect to pulseaudio, run `pulseaudio --start`)_

### fonts

- sudo apt install fonts-firacode
- install `Operator Mono` moving files to `~/.local/share/fonts`
- flush fonts cache `fc-cache -fv`
- make sure fonts were installed `fc-list | grep Operator\ Mono`

### browser

- install firefox ESR `apt-get install firefox-esr`
- download and install google chrome `dpkg -i ...`

### dev

- install git & ssh

```
apt-get install git
apt-get install ssh
```

- copy private and public keys to `.ssh/(id_rsa|id_rsa.pub)`
- create .cfg `git clone git@github.com:ramonsaraiva/macfiles .cfg`
- create symlinks from .cfg

```
ln -s ~/.cfg/.xinitrc .xinitrc
ln -s ~/.cfg/.Xresources .Xresources
ln -s ~/.cfg/kitty.conf .config/kitty/kitty.conf
ln -s ~/.cfg/.i3 .config/i3/config
ln -s ~/.cfg/.i3status.conf .i3status.conf
ln -s ~/.cfg/.tmux.conf .tmux.conf
ln -s ~/.cfg/.zshrc .zshrc
ln -s ~/.cfg/.gitconfig .gitconfig
ln -s ~/.cfg/.gitignore .gitignore
ln -s ~/.cfg/.pylintrc .pylintrc
```

- install [docker](https://docs.docker.com/install/linux/docker-ce/debian/)
- install [docker-compose](https://docs.docker.com/compose/install/)
- docker [post install](https://docs.docker.com/install/linux/linux-postinstall/)

### terminal tooling

- install tmux & plugins

```
apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

- install zsh & ohmyzsh

```
apt-get install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- install zsh plugins (autosuggestions, etc..)

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- change default shell `chsh -s $(which zsh)`
- install ranger `apt-get install ranger`
- install fzf `apt-get install fzf`
- install pure (prompt) https://github.com/sindresorhus/pure

### vim

- create symlink `ln -s ~/.cfg/nvim ~/.config/nvim`
- clone packer

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- run `vim --headless +PackerInstall +qall`
- install ripgrep `apt-get install ripgrep`
- install gh `https://github.com/cli/cli/blob/trunk/docs/install_linux.md`

### python

- install pyenv `git clone https://github.com/pyenv/pyenv.git ~/.pyenv`
- install pyenv virtualenv `https://github.com/pyenv/pyenv-virtualenv`
- install 2.7.x version for vim `g:python_host_prog` (yeah but should use shims)
- install 3.x version for vim `g:python3_host_prog` (yeah but should use shims)
- install neovim
- install pylint
- install black

### node

- install fnm (yeah yeah bye nvm)
- install lts version of node and make it default
- install coc

### aesthetics

- install feh `apt-get install feh`
- move a background image to `~/wp/default.jpg`
- screenshot manager `apt-get install flameshot`

### hosts/dnsmasq

- install `apt-get install dnsmasq`
- copy `~/.cfg/dnsmasq.conf`
- copy `~/.cfg/hosts`
