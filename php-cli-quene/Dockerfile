FROM php:7.4-cli

#COPY etc/ /etc/

RUN apt-get update && apt-get install -y libxml2-dev libreadline-dev libbz2-dev zlib1g-dev libmcrypt-dev libedit-dev libcurl4-gnutls-dev libzip-dev \
    && docker-php-ext-install -j$(nproc) mysqli pdo_mysql zip bz2

RUN apt-get install -y cron

COPY usr/ /usr/
COPY etc/cron.d/jobs /etc/cron.d/

RUN chown root:root /etc/cron.d/jobs && chmod 644 /etc/cron.d/jobs

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
