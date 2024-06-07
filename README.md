# dotfiles

1. [Execution](#execution)
    - [Encrypting Keys](#encrypting-keys)
    - [macOS](#macos)
    - [Linux](#linux)
2. [File Descriptions](#file-descriptions)


___


## Execution:

### Generating a new SSH key

```bash
ssh-keygen -t rsa -b 4096
```

A private key & a public key would be generated using the command.

### `Encrypting Keys`

Store a single key in a file `your_text_file` & encrypt like this for all the keys

```bash
ansible-vault encrypt your_text_file
```

Create a variable for the encrypted or plain text key and store it in `credentials.yml`.

___

### `macOS`

#### Install Ansible & Homebrew:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/suyashbhawsar/dotfiles/main/macOS-setup.sh)"
```

##### Note: Quit & re-open the Terminal

#### Set up git:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --vault-id @prompt --tags mac-minimal,mac-full git.yml
```

#### Install 'Minimal' Packages & Configurations:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac-minimal install.yml
```

#### Install 'Full' Packages & Configurations:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac-full install.yml
```

#### Remove Packages & Configurations:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac remove.yml
```
___

### `Linux`

#### Clone the repo & build the docker image

```bash
cd ~/ && rm -rf dotfiles && git clone https://github.com/suyashbhawsar/dotfiles.git && docker stop $(docker ps -a | grep "debian-ansible" | sed 's/\|/ /'|awk '{print $1}') | xargs docker rm && docker rmi debian-ansible && docker build -t debian-ansible .
```

#### Start a container from the docker image

```bash
docker run -it --rm debian-ansible /bin/bash
```

#### Set up git:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --vault-id @prompt --tags linux git.yml
```


#### Install Packages & Configurations:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags linux install.yml
```


#### Remove Packages & Configurations:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags linux remove.yml
```


___
___


## File Descriptions:

- `Dockerfile`:
  Defines the Docker image with all necessary dependencies for running Ansible on a Debian-based system.

- `macOS-setup.sh`:
  Shell script to install Homebrew, Python, and Ansible on macOS.

- `credentials.yml`:
  Stores variables for both plain text and encrypted credentials, used within the playbooks.

- `personal_git.yml`:
  This Ansible playbook is designed to configure Git settings, manage SSH keys, and clone a specific Git repository. Below is a detailed explanation of each section and task in the playbook.
  + Playbook Overview
    + Variable Files:
      + credentials.yml (This file contains sensitive information such as your personal Git username, email, and SSH keys.)
    + Tasks Breakdown
      1. Git Configuration
         Task 1: Set Git user.name



- `install.yml`:
  Ansible playbook that runs the post-stow configuration (from the private repository: .dotfiles) after installing and configuring packages.

- `remove.yml`:
  Playbook to remove installed packages and configurations.


___
___


## Troubleshooting

