#!/bin/bash

if isMac; then
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

apps=(
  firefox
  flux
  font-fira-code
  google-chrome
  google-chrome-canary
  macdown
  opera
  screenflow
  sourcetree
  transmit
  virtualbox
  visual-studio-code
  vlc
)

brew cask install "${apps[@]}"
