# pulling base image node.js
FROM node:latest

# creating working directory inside the container
WORKDIR /app

# copy files into working directory
COPY . /app

# install required dependencies
RUN npm install

# expose the port
EXPOSE 8080

# command to run application
CMD ["node", "server.js"]
