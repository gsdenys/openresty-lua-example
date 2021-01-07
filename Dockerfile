FROM openresty/openresty

RUN mkdir -p /etc/openresty/sites/

COPY *.lua /etc/openresty/sites/
COPY default.conf /etc/nginx/conf.d/default.conf
