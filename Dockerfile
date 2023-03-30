FROM node:16
WORKDIR /app
RUN npm i npm@latest -g
COPY package*.json ./
RUN npm install
EXPOSE 3000
COPY . .
CMD [ "node", "index.js" ]