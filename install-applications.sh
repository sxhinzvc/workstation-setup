#!/bin/bash

# based on https://github.com/pivotal/workstation-setup/blob/master/scripts/common/applications-common.sh

set +e

# install brew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

declare -a apps=(flycut iterm2 google-chrome atom slack jq)
for app in ${apps[@]}; do
  brew cask install $app
done

# atom installs
apm install language-terraform

brew install ag

brew cask install shiftit
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"

brew cask install virtualbox
brew install direnv
echo 'eval "$(direnv hook bash)"' >>~/.bashrc

# set up python 3 environment
brew install pyenv
pyenv install 3.6.4
pyenv global 3.6.4

echo 'export PATH=$(pyenv root)/shims:$PATH' >>~/.bashrc
echo 'eval "$(pyenv init -)"' >>~/.bashrc
source ~/.bashrc

set -e
