# Tools Setup Notes

## 1. Neovim (nvim)

```bash
apt update -y
apt install nvim
cd ~/.config/nvim
git clone https://github.com/cpow/neovim-for-newbs.git
cd neovim-for-newbs/
mv * ../
```

---

## 2. Zsh

### Install Zsh

```bash
sudo apt update -y
sudo apt install zsh -y
chsh -s $(which zsh)
```

### Install Oh-my-zsh

```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### Install Hack Nerd Font

```bash
cd ~/Downloads
unzip Hack.zip
sudo mv Hack /usr/share/fonts
sudo fc-cache -f -v
sudo apt install gnome-tweaks
```

> Open Tweaks → change Monospace font to **Hack Nerd Font Mono Regular**

### Install Powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Set theme in `~/.zshrc`:

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

### Install zsh-autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Add to `~/.zshrc`:

```bash
plugins=(
    # other plugins...
    zsh-autosuggestions
)
```

### Install zsh-syntax-highlighting

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Add to `~/.zshrc`:

```bash
plugins=([plugins...] zsh-syntax-highlighting)
```

### Install colorls

```bash
sudo apt install ruby-rubygems ruby-dev
gem install --user-install colorls
```

Add to `~/.zshrc`:

```bash
export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"
```

---

## 3. Tmux

```bash
sudo apt install -y tmux
git clone https://github.com/cpow/cpow-dotfiles.git
tmux new
vi ~/.tmux.conf
```

> Press `Ctrl + s + I` to install tmux plugins.

### Install tmuxifier

```bash
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
```
