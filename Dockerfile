FROM docker/compose:debian-1.29.2

RUN apt update && \
    apt install -y curl && \
    rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://code-server.dev/install.sh | sh

ENTRYPOINT ["code-server"]
