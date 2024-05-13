FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        ansible \
        git \
        gnupg \
    && rm -rf /var/lib/apt/lists/*
