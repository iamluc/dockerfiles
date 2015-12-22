FROM alpine:3.2

RUN apk add --update \
        git \
        php-cli php-phar php-zlib php-json php-zip php-openssl php-curl php-dom php-ctype \
        php-pdo_mysql \
    && rm -rf /var/cache/apk/*

RUN php -r "readfile('https://getcomposer.org/composer.phar');" > /usr/local/bin/composer && chmod +x /usr/local/bin/composer

ENV XDG_CONFIG_HOME /config
ENV COMPOSER_HOME /config/composer

RUN mkdir -p /config/git /config/composer \
    && touch /config/git/config \
    && chmod 777 -R /config \
    && git config --global user.email "john@do.com" \
    && git config --global user.name "John Do"

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

VOLUME ["/config"]

WORKDIR "/home"

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
