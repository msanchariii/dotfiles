# ansible_playbook

#### Create a file named pass `~/pass` & store the Ansible Vault Password in it

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
ansible-pull -U https://github.com/suyashbhawsar/dotfiles install.yml --tags linux --vault-password-file pass
```
( Create pass file which contains your password of the encrypted file in the directory where you are willing to run this command )   

#### Remove packages & configs in Linux:

```bash
ansible-pull -U https://github.com/suyashbhawsar/dotfiles remove.yml --tags linux
```
