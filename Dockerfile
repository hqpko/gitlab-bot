FROM library/node:lts-alpine

COPY . /app
WORKDIR /app

RUN cd /app && \
    npm config set registry https://registry.npmmirror.com \
    npm i --production

CMD ["npm", "start"]
