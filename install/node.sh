#!/bin/bash

echo " - Installing NodeJS"

if [ -z "$(which node)" ]; then
  if isMac; then
    brew install node
  else
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt-get install -y nodejs
  fi
fi

packages=(
  n
  npm
  npm-user-switch
)

echo " - Installing npm packages"
if isMac; then
  npm install -g "${packages[@]}"
else
  sudo npm install -g "${packages[@]}"
fi

echo " - Updating NodeJS"
if isMac; then
  n 10
else
  sudo n 10
fi
