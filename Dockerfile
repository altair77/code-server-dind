FROM docker:dind

RUN apk --no-cache --update add npm alpine-sdk bash libstdc++ libc6-compat npm libx11-dev libxkbfile-dev libsecret-dev && \
    npm config set unsafe-perm true && \
    npm install -g code-server

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

ENV DOCKER_TLS_CERTDIR /certs
ENV DOCKER_HOST tcp://localhost:2376
ENV DOCKER_TLS_VERIFY true
ENV DOCKER_CERT_PATH /certs/client
WORKDIR /work

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
