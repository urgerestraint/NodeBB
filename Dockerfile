FROM node:6-onbuild

ENV NODE_ENV=production \
    daemon=false \
    silent=false \
    isCluster=true

CMD node app --setup=\{\"url\"\:\"$NODEBB_URL\",\"secret\"\:\"$NODEBB_SECRET\",\"database\"\:\"mongo\",\"mongo\:host\"\:$DB_PORT_27017_TCP_ADDR,\"mongo\:port\"\:$DB_PORT_27017_TCP_PORT,\"mongo\:username\"\:\"$NODEBB_DB_USER\",\"mongo\:password\"\:\"$NODEBB_DB_PASS\",\"mongo\:database\"\:\"$NODEBB_DB_NAME\",\"admin\:username\"\:\"$NODEBB_ADMIN_USER\",\"admin\:email\"\:\"$NODEBB_ADMIN_EMAIL\",\"admin\:password\"\:\"$NODEBB_ADMIN_PASS\",\"admin\:password\:confirm\"\:\"$NODEBB_ADMIN_PASS\"\} && npm start

EXPOSE 4567
