FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        ansible \
        git \
        gnupg \
        python3 \
    && rm -rf /var/lib/apt/lists/*
