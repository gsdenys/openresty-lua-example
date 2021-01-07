FROM openresty/openresty

RUN mkdir -p /etc/openresty/sites/

COPY src/* /etc/openresty/sites/
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80