FROM node:14

WORKDIR /usr/src/app

COPY .env ./

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "start"]
