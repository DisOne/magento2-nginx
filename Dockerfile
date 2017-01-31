FROM nginx:1.11
MAINTAINER Harry Disseldorp <h.disseldorp@gmail.com>

ENV PHP_HOST=phpfpm \
		PHP_PORT=9000 \
		APP_MAGE_MODE=default

COPY conf/nginx.conf /etc/nginx/
COPY conf/default.conf /etc/nginx/conf.d/
COPY bin/start /usr/local/bin/start

WORKDIR /var/www/html

CMD ["/usr/local/bin/start"]
