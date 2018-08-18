FROM gcr.io/google_containers/nginx-slim:0.10

ADD nginx.conf /etc/nginx/nginx.conf

COPY www /var/www/html

RUN ls -l /var/www/html
