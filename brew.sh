#!/usr/bin/env bash

# install brew
echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# TODO, don't run on first run
brew upgrade && brew update

declare -a taps=(
  # A command line tool for upgrading every outdated app installed by Homebrew Cask
  'buo/cask-upgrade'
)

# Upgrade outdated apps:
# https://github.com/buo/homebrew-cask-upgrade
# brew cu

for tap in "${taps[@]}"; do
  brew tap "$tap"
done

function brew_cleanup () {
  # cleanup
  brew cleanup --force
  rm -f -r /Library/Caches/Homebrew/*
}
