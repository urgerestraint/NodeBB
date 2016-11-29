FROM node:6-onbuild

ENV NODE_ENV=production \
    daemon=false \
    silent=false \
    isCluster=true

CMD node app --setup && npm start

EXPOSE 4567
