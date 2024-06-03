FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        ansible \
        git \
        gnupg \
        python3 \
        apt-transport-https \
        ca-certificates \
        curl \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir ~/.dotfiles && touch ~/.dotfiles/post_stow.yml

# Add content to playbook
RUN echo '---' > ~/.dotfiles/post_stow.yml && \
    echo '- name: Null Playbook' >> ~/.dotfiles/post_stow.yml && \
    echo '  hosts: localhost' >> ~/.dotfiles/post_stow.yml && \
    echo '  tasks:' >> ~/.dotfiles/post_stow.yml && \
    echo '    - name: Do nothing' >> ~/.dotfiles/post_stow.yml && \
    echo '      debug:' >> ~/.dotfiles/post_stow.yml && \
    echo '        msg: "This playbook does nothing"' >> ~/.dotfiles/post_stow.yml
