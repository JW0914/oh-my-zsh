#!/bin/sh

# To update zsh-autosuggestions:
cd "$ZSH/custom/zsh-autosuggestions"
  if [ ! -e $ZSH/custom/plugins/zsh-autosuggestions/.git ]; then
    git init
    git remote add origin https://github.com/zsh-users/zsh-autosuggestions
    git fetch
    git checkout origin/master -ft
    git pull --rebase --stat origin master
  else
    git pull --rebase --stat origin master
  fi

# To update zsh-syntax-highlighting:
cd "$ZSH/custom/zsh-syntax-highlighting"
  if [ ! -e $ZSH/custom/plugins/zsh-syntax-highlighting/.git ]; then
    git init
    git remote add origin https://github.com/zsh-users/zsh-syntax-highlighting
    git fetch
    git checkout origin/master -ft
    git pull --rebase --stat origin master
  else
    git pull --rebase --stat origin master
  fi
