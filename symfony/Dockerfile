FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

# Base Apache + PHP
RUN apt-get update && apt-get install --yes \
    wget git \
    apache2 \
    php5 php5-sqlite php5-mysql php5-intl php5-curl \
  && rm -rf /var/lib/apt/lists/* \
  && a2enmod rewrite

# Tools (Composer, Blackfire)
RUN wget -O - https://packagecloud.io/gpg.key | apt-key add - \
  && echo "deb http://packages.blackfire.io/debian any main" > /etc/apt/sources.list.d/blackfire.list \
  && apt-get update && apt-get install --yes \
    blackfire-php \
  && rm -rf /var/lib/apt/lists/* \
  && sed -e "s/^blackfire.agent_socket/;blackfire.agent_socket/" -i /etc/php5/mods-available/blackfire.ini \
  && echo "\nblackfire.agent_socket=\${BLACKFIRE_PORT}" >> /etc/php5/mods-available/blackfire.ini \
  && wget -O /usr/local/bin/composer https://getcomposer.org/composer.phar && chmod +x /usr/local/bin/composer

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY vhost.conf /etc/apache2/sites-enabled/000-default.conf

WORKDIR /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["apache2ctl", "-DFOREGROUND"]
