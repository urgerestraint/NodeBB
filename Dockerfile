FROM node:6-onbuild

ENV NODE_ENV=production \
    daemon=false \
    silent=false \
    database=mongo \
    url=$NODEBB_URL \
    secret=$NODEBB_SECRET \
    mongo__host=$NODEBB_DATABASE_MONGO_HOST \
    mongo__port=$NODEBB_DATABASE_MONGO_PORT \
    mongo__database=$NODEBB_DATABASE_MONGO_DB

CMD node app --setup && npm start

EXPOSE 4567
