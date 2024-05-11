FROM php:8.2.19-apache-bullseye

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
	    libzip-dev libpng-dev libxml2-dev \
	; \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql mysqli zip gd soap

CMD ["apache2-foreground"]