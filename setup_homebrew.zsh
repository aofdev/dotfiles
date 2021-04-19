#!/usr/bin/env zsh

# Installing & Checking for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  
  echo "  Installing Dependencies from Homebrew"
  brew bundle --file ~/.dotfiles/Brewfile
fi
