#!/usr/bin/env bash

echo -e "[1/3] Checking if brew is installed... \c"
if ! command -v brew 2>&1; then
  echo "not found, installing..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "[2/3] Checking if stow is installed... \c"
if ! brew ls --versions stow; then
  echo "not found, installing..."
  brew install stow
fi

echo -e "[3/3] Stowing dotfiles to $HOME... \c"
if stow --dir=files --target="$HOME" $(ls files | sed 's#/##' | paste -sd " " -); then
  echo "ok"
fi
