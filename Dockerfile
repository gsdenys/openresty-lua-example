#FROM mmaartje/openresty:arm64v8-1.17.8.1rc1
FROM openresty/openresty:1.19.3.1-3-alpine-fat
#RUN apt update && apt upgrade -y && apt install -y luarocks
RUN apk add git
RUN mkdir -p /etc/openresty/sites/

COPY src/* /etc/openresty/sites/
COPY default.conf /etc/nginx/conf.d/default.conf

RUN luarocks install uuid
RUN luarocks install --server=https://luarocks.org/dev log4lua

EXPOSE 80