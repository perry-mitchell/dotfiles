#!/bin/bash

##################
# Install script #
##################

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Begin
echo "Preparing dotfiles..."

cd $DIR

for filename in $DIR/helpers/*.sh; do
  source $filename
done

ln -sfv "$DIR/.bash_profile" ~

echo "Reloading bash profile..."
source ~/.bash_profile

echo "Installing applications..."

for filename in $DIR/install/*.sh; do
  . $filename
done

echo "Complete."
