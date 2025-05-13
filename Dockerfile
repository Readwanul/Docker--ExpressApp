# node image
FROM node:18

# set working directory
WORKDIR /src/app

# install dependencies
COPY package*.json ./
RUN npm install

# copy source code
COPY . .

# expose port
EXPOSE 5000

# start server via npm start script
CMD ["npm", "start"]
