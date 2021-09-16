#!/bin/bash

# based on https://github.com/pivotal/workstation-setup/blob/master/scripts/common/applications-common.sh

set +e

# install brew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

declare -a apps=(flycut iterm2 atom slack shiftit 1password intellij-idea docker wireshark firefox time-out adoptopenjdk8)
for app in ${apps[@]}; do
  brew install --cask $app
done

# atom installs
# apm install language-terraform

declare -a apps=(jq z the_silver_searcher direnv awscli git openjdk openjdk@11 openssl@1.1 tmux watch tree dos2unix gradle terraform)
for app in ${apps[@]}; do
  brew install $app
done

# shifit configuration
# echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
# echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"

# z configuration

# set up python 3 environment
#brew install pyenv
#pyenv install 3.6.4
#pyenv global 3.6.4
#echo 'export PATH=$(pyenv root)/shims:$PATH' >>~/.bashrc
#echo 'eval "$(pyenv init -)"' >>~/.bashrc

source ~/.bashrc

set -e
