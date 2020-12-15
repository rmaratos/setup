#!/usr/bin/env bash

declare -a cask_apps=(
  'alfred'
  'bettertouchtool'
  'dash'
  'google-chrome'
  'iterm2'
  'visual-studio-code'
  'vlc'
)

# for app in "${cask_apps[@]}"; do
  # echo "brew cask install $app" 
  # brew cask install "$app"
# done

# exit 0  

# Link Cask Apps to Alfred
brew cask alfred link

declare -a mas_apps=(
  '937984704' # Amphetamine - Keep mac awake
  '409907375' # Apple Remote Desktop
  '413857545' # Divvy - Window management
  '409183694' # Keynote
  '409201541' # Pages
  '409203825' # Numbers
  '425424353' # The Unarchiver - Open archive files
  '497799835' # Xcode - Will take forever to download

  # Safari Extensions
  '926036361'  # LastPass
  '1160374471' # PiPifier
  '1477385213' # Save to Pocket
)

for app in "${mas_apps[@]}"; do
  mas install "$app"
done
