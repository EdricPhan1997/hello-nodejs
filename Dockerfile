FROM node:16
WORKDIR /index.js
COPY package*.json ./
RUN npm install
EXPOSE 3000
COPY . .
CMD ["npm", "start"]