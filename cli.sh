#!/usr/bin/env bash

declare -a clis=(
  'jq',
  'mas',
  'wget'
)

for cli in "${clis[@]}"; do
  brew install "$cli"
done
