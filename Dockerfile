FROM node:14-alpine

WORKDIR /application
COPY package.json yarn.lock ./
RUN yarn --silent --no-progress --frozen-lockfile --production
COPY entrypoint.sh ./

EXPOSE 4568
VOLUME /data

ENTRYPOINT ["./entrypoint.sh"]
