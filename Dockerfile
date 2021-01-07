FROM openresty/openresty

RUN mkdir -p /etc/openresty/sites/

COPY api.lua /etc/openresty/sites/api.lua
COPY default.conf /etc/nginx/conf.d/default.conf
