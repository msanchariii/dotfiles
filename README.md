# ansible_playbook

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
