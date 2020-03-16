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

sleep 1

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $HOME/.Brewfile


