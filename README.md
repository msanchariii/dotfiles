# ansible_playbook

#### Install Ansible & Homebrew in MacOS:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/suyashbhawsar/dotfiles/main/macOS-setup.sh)"
```

##### Now, quit & re-open the Terminal

#### Setup git in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --vault-id @prompt --tags mac-minimal,mac-full git.yml
```

#### Install Minimal packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac-minimal install.yml
```

#### Install Full packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac-full install.yml
```

#### Remove packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags mac remove.yml
```
___
#### Setup git in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --vault-id @prompt --tags linux git.yml
```


#### Install packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags linux install.yml
```


#### Remove packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles --tags linux remove.yml
```
