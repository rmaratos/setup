#!/usr/bin/env bash

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# "node" is an alias for the latest version
nvm install node 

# Set a default Node version to be used in any new shell
nvm alias default node

# Install yarn
brew install yarn
