FROM nginx

ARG ETHEREUM_ENDPOINT

ADD ./configure.sh /opt/

CMD bash -c "/opt/configure.sh > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
