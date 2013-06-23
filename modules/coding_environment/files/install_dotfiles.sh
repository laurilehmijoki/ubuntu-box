#!/bin/bash -e

rm -f .bashrc # git will fail on override
rm -f .bash_profile # git will fail on override
git init
git remote add origin https://github.com/laurilehmijoki/dotfiles.git
git pull origin master
