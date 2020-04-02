FROM nginx

ARG ETHEREUM_ENDPOINT

ADD ./src /opt/orbs/

CMD bash -c "/opt/orbs/configure.sh > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
