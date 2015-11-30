FROM alpine:3.2

RUN apk add --update \
        php-cli php-phar php-zlib php-json php-zip php-openssl php-curl php-dom php-ctype \
        php-pdo_mysql \
    && rm -rf /var/cache/apk/*

RUN php -r "readfile('https://getcomposer.org/composer.phar');" > /usr/local/bin/composer && chmod +x /usr/local/bin/composer

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR "/home"

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
