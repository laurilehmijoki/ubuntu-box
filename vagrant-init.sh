#!/bin/bash

echo Installing Debian packages...
packages=( git-core ruby ruby-dev rubygems rake vim-nox curl tmux ctags ack-grep build-essential )
for package in ${packages[@]}
do
  echo "Ensuring that package $package exists..."
  sudo apt-get install -y ${package} > /dev/null
done

echo Cloning dotfiles from GitHub as read-only
git init
git remote add origin git://github.com/laurilehmijoki/dotfiles.git
git pull origin master

echo Git is now set up. For read-write access, remember to add the public SSH key to GitHub.
