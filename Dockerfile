FROM nginx

ARG ETHEREUM_ENDPOINT

RUN apt-get update && apt-get install -y curl sudo
RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
RUN apt-get install -y nodejs

ADD ./src /opt/orbs/

RUN cd /opt/orbs/ && npm install

HEALTHCHECK --interval=5s --timeout=30s --start-period=5s --retries=3 CMD [ "node", "/opt/orbs/healthcheck.js", "http://localhost", "/opt/orbs/status/status.json" ]

CMD bash -c "/opt/orbs/configure.sh > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
