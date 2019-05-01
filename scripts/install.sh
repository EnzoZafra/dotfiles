#!/bin/bash

# suppress welcome message
if [ ! -f $HOME/.hushlogin ]; then
  touch $HOME/.hushlogin
fi

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap thoughtbot/formulae

# Installs
brew install 'coreutils'
brew install 'git'
brew install 'mas'
brew install 'node'
brew install 'vim'
brew install 'zsh-autosuggestions'
brew install 'zsh'

# Casks
brew cask install --appdir="/Applications" 'iterm2'
brew cask install --appdir="/Applications" 'visual-studio-code'
brew cask install --appdir="/Applications" 'google-chrome'
brew cask install --appdir="/Applications" 'alfred'
brew cask install --appdir="/Applications" 'spotify'

brew cask alfred link

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

# update terminal
tic -x ../iterm/xterm-256color-italic.terminfo
tic -x ../iterm/tmux.terminfo
tic -x ../iterm/tmux-256color.terminfo

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
