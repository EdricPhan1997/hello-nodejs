FROM node:16 
# Create app directory 
WORKDIR /usr/src/app 

# Install app dependencies 
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./ 
RUN npm install 

# Bundle app source 
COPY . . 

# Expose the port that the express are running 
EXPOSE 3000 
CMD [ "npm", "run","start" ]