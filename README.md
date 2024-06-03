# ansible_playbook

### Create a file named pass `~/pass` & store the Ansible Vault Password in it

#### Install Ansible & Homebrew in MacOS:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/suyashbhawsar/dotfiles/main/macOS-setup.sh)"
```

##### Now, quit & re-open the Terminal

#### Install Minimal packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles install.yml --tags mac-minimal --vault-password-file $HOME/pass
```

#### Install Full packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles install.yml --tags mac-full --vault-password-file $HOME/pass
```

#### Remove packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles remove.yml --tags mac
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
