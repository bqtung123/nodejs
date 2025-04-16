# OR specify the base image version 23.2.0
FROM node:23.2.0

WORKDIR /app

RUN ls -a
COPY package.json ./

COPY src ./

# install dependencies and create node_modules
RUN npm install

CMD ["node", "index.js"]