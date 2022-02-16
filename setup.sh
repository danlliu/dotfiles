#!/bin/zsh

# useful stuff
xcode-select --install

brew install node

# Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# .zshrc
# WILL OVERWRITE YOUR OLD ZSHRC
head -n 5 ~/.zshrc | cat - ./.zshrc > ~/.zshrc

# danlliu's Oh-My-ZSH theme
cp ./danlliu.zsh-theme $ZSH/custom/themes/danlliu.zsh-theme

# install all the plugins

brew install ddgr
npm install -g how-2
brew install hr
brew install loop
brew install screen
brew install tldr
brew install tmux
brew install fzy ccat
cd ~
git clone https://github.com/b4b4r07/enhancd
chflags hidden enhancd
brew install cloc
brew install bat
brew install bmon
brew install exa
brew install htop
brew install iftop
brew install tcpdump
npm i -g vtop
npm i -g carbon-now-cli
npm install -g is.sh

