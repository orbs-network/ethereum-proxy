#!/bin/sh -e

cat << EOF
server {
    listen 80;

    location / {
        proxy_pass $ETHEREUM_ENDPOINT;
    }

    location /status.json {
        alias /opt/orbs/status/status.json;
    }
}
EOF