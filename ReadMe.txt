Tools takennote
1. nvim
apt update -y
apt install nvim
cd ~/.config/nvim
git clone https://github.com/cpow/neovim-for-newbs.git
cd neovim-for-newbs/
mv * ../

2. zsh
# install zsh
sudo apt update -y
sudo apt install zsh -y
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# install hack fonts
# download from nerd font
cd /Downloads
unzip Hack.zip
sudo mv Hack /usr/share/fonts
sudo fc-cache -f -v
sudo apt install gnome-tweaks
# open tweaks
# change monospace fonts to hack nerd font mono regular

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

# install zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
#
#plugins=( 
#    # other plugins...
#    zsh-autosuggestions
#)

# install zsh-syntaxhighlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
plugins=( [plugins...] zsh-syntax-highlighting)

# install colorsls
sudo apt install ruby-rubygems ruby-dev
gem install --user-install colorls
nvim ~/.zshrc
export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"

3. tmux
sudo apt install -y tmux
git clone https://github.com/cpow/cpow-dotfiles.git
tmux new
vi ~/.tmux.conf
ctrl + s + I
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
