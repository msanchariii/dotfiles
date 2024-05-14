# ansible_playbook

### Install Ansible & Homebrew in MacOS:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/suyashbhawsar/ansible_playbook/main/macOS-setup.sh)"
```

#### Now, quit & re-open the Terminal

### Install Minimal packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook install.yml --tags mac-minimal
```

### Install Full packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook install.yml --tags mac-full
```

### Remove packages & configs in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook remove.yml --tags mac
```
___
### Install Minimal packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook install.yml --tags linux-minimal
```

### Install Full packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook install.yml --tags linux-full
```

### Remove packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook remove.yml --tags linux
```
