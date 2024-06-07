#!/bin/bash

# Install Homebrew if not installed
if ! command -v brew >/dev/null 2>&1; then
  echo -e "\033[1;34mInstalling Homebrew\033[0m"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo -e "\033[1;34mHomebrew is already installed\033[0m"
fi

# Install Python3 if not installed
if ! command -v python3 >/dev/null 2>&1; then
  echo -e "\033[1;34mInstalling Python\033[0m"
  brew install python
else
  echo -e "\033[1;34mPython is already installed\033[0m"
fi

# Install Ansible if not installed
if ! command -v ansible >/dev/null 2>&1; then
  echo -e "\033[1;34mInstalling Ansible\033[0m"
  brew install ansible
else
  echo -e "\033[1;34mAnsible is already installed\033[0m"
fi

# Install Stow if not installed
if ! command -v stow >/dev/null 2>&1; then
  echo -e "\033[1;34mInstalling Stow\033[0m"
  brew install stow
else
  echo -e "\033[1;34mStow is already installed\033[0m"
fi
