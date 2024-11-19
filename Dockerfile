FROM openresty/openresty:alpine-fat

RUN mkdir /var/log/nginx

RUN apk add --no-cache \
    openssl-dev \
    git \
    gcc \
    && luarocks install lua-resty-openidc

ENTRYPOINT ["/usr/local/openresty/nginx/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80
