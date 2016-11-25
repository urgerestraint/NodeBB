FROM node:6-onbuild

ENV NODE_ENV=production \
    daemon=false \
    silent=false \
    isCluster=true

RUN echo "{\"url\":\"$NODEBB_URL\",\"secret\":\"$NODEBB_SECRET\",\"database\":\"mongo\",\"port\":4567,\"mongo\":{\"host\":\"$DB_PORT_27017_TCP_ADDR\",\"port\":\"$DB_PORT_27017_TCP_PORT\",\"database\":\"$DB_ENV_DOCKERCLOUD_STACK_NAME\"}}" > config.json
CMD node app --setup && npm start

EXPOSE 4567
