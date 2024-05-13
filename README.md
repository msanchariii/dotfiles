# ansible_playbook

### Install Ansible & Homebrew in MacOS:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/suyashbhawsar/ansible_playbook/main/macOS-setup.sh)"
```

#### Install Minimal packages in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook main.yml --tags mac-minimal
```

#### Install Full packages in MacOS:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook main.yml --tags mac-full
```

#### Install Minimal packages in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook main.yml --tags linux-minimal
```

#### Install Full packages in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/ansible_playbook main.yml --tags linux-full
```
