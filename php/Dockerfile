FROM php:7.2-cli

RUN mkdir /app /home/app \
    && useradd -d /home/app app \
    && chown -R app:app /app /home/app

RUN curl -Lo /usr/local/bin/composer https://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer
RUN curl -Lo /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64 && chmod +x /usr/local/bin/gosu

RUN apt-get update && apt-get install -y \
        git \
        libicu-dev zlib1g-dev librabbitmq-dev uuid-dev libpq-dev libpcre3-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo_mysql pdo_pgsql intl zip mbstring pcntl

RUN pecl install amqp-1.7.0 && \
    echo "extension=amqp.so" > /usr/local/etc/php/conf.d/ext-amqp.ini && \
    pecl install apcu-5.1.5 && \
    echo "extension=apcu.so" > /usr/local/etc/php/conf.d/ext-apcu.ini && \
    pecl install apcu_bc-1.0.3 && \
    echo "extension=apc.so" > /usr/local/etc/php/conf.d/ext-apcu_bc.ini && \
    pecl install uuid && \
    echo "extension=uuid.so" > /usr/local/etc/php/conf.d/ext-uuid.ini && \
    pecl install redis-3.1.6 && \
    echo "extension=redis.so" > /usr/local/etc/php/conf.d/ext-redis.ini

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["php", "-a"]
