# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
  echo -e "\033[1;34mInstalling Homebrew\033[0m"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install Python3
echo -e "\033[1;34mInstalling Python\033[0m"
brew install python

# Install Ansible
echo -e "\033[1;34mInstalling Ansible\033[0m"
brew install ansible

# Install watchdog
echo -e "\033[1;34mInstalling watchdog\033[0m"
pip3 install watchdog --break-system-packages
