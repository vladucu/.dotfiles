#!/bin/bash
# Install zsh
# sudo apt-get update --quiet
sudo apt-get install --quiet --assume-yes zsh

# Set zsh as your default shell:
chsh -s `which zsh`

# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# Install modman, module manager for Magento
# https://github.com/colinmollenhour/modman
bash < <(curl -s https://raw.github.com/colinmollenhour/modman/master/modman-installer)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# https://github.com/rupa/z
# z, oh how i love you
mkdir -p $PWD/z
curl https://raw.github.com/rupa/z/master/z.sh > $PWD/z/z.sh
chmod +x $PWD/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# DO: install sublime2 and create symlink as sub