# ansible_playbook

#### Install Ansible & Homebrew in MacOS:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/suyashbhawsar/dotfiles/main/macOS-setup.sh)"
```

##### Now, quit & re-open the Terminal

#### Install Minimal packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles install.yml --tags mac-minimal
```

#### Install Full packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles install.yml --tags mac-full
```

#### Remove packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles remove.yml --tags mac
```
___
#### Install packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles install.yml --tags linux
```

#### Remove packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles remove.yml --tags linux
```
