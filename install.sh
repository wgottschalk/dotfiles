#!/bin/bash

cat << "EOF"
   +-------------------+
   |.-----------------.|
   || Welcome to      ||
   || the install     ||
   || script!         ||
   ||                 ||
   || Let's go!!      ||
   |+-----------------+|
   +-..-------------..-+
   .-------------------.
  / /=================\ \
 / /===================\ \
/_________________________\
\_________________________/
EOF

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/wgottschalk/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "skipping brew installation"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $HOME/.Brewfile


# install oh-my-zsh
if test ! $HOME/.oh-my-zsh; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "skipping oh my zsh installation"
fi
