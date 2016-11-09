FROM node:6-onbuild

ENV NODE_ENV=production \
    daemon=false \
    silent=false \
    isCluster=true \
    database=mongo \
    setup=$NODEBB_SETUP \
    url=$NODEBB_URL \
    secret=$NODEBB_SECRET \
    mongo__host=$NODEBB_DATABASE_MONGO_HOST \
    mongo__port=$NODEBB_DATABASE_MONGO_PORT \
    mongo__database=$NODEBB_DATABASE_MONGO_DB \
    setup={"admin:username":"$NODEBB_ADMIN_USER","admin:password":"$NODEBB_ADMIN_PASS","admin:password:confirm":"$NODEBB_ADMIN_PASS","admin:email":"$NODEBB_ADMIN_EMAIL"}

CMD node app --setup && npm start

EXPOSE 4567
