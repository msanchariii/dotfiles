# ansible_playbook

## Encrypt the keys
Store a single key in a file `your_text_file` & encrypt like this for all the keys

```bash
ansible-vault encrypt your_text_file
```

Create a variable for the encrypted / plain text key
Put the key in credentials.yml

___
___

## MacOS

### Install Ansible & Homebrew:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/suyashbhawsar/dotfiles/main/macOS-setup.sh)"
```

#### Now, quit & re-open the Terminal

### Setup git:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --vault-id @prompt --tags mac-minimal,mac-full git.yml
```

### Install 'Minimal' packages & configs:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac-minimal install.yml
```

### Install 'Full' packages & configs:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac-full install.yml
```

### Remove packages & configs:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac remove.yml
```
___

## Linux

### Clone the repo & build the docker image

```bash
cd && rm -rf dotfiles && git clone https://github.com/suyashbhawsar/dotfiles.git && docker stop $(docker ps -a | grep "debian-ansible" | sed 's/\|/ /'|awk '{print $1}') | xargs docker rm && docker rmi debian-ansible && docker build -t debian-ansible .
```

## Start a container from the docker image

```bash
docker run -it --rm debian-ansible /bin/bash
```

### Setup git:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --vault-id @prompt --tags linux git.yml
```


### Install packages & configs:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags linux install.yml
```


### Remove packages & configs:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags linux remove.yml
```
