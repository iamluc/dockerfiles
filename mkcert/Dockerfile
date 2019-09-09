FROM debian:buster

RUN apt update && \
    apt install -y curl libnss3-tools && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -Lo /usr/local/bin/mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.0/mkcert-v1.4.0-linux-amd64 && \
    chmod +x /usr/local/bin/mkcert
