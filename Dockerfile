FROM node:lts-alpine3.14

# INSTALL TOOLS
RUN apk update && apk add chromium

WORKDIR /app

COPY package.json ./

RUN npm install --production

COPY app.js index.html .
COPY /helpers ./helpers

EXPOSE 8000

CMD node app.js