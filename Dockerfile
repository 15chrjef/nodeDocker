FROM node:boron

# create the filesystem's directory'
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#find and install dependencies
COPY package.json /usr/src/app/
RUN npm install

#bundles app together
COPY . /usr/src/app

EXPOSE 8080
CMD ["npm", "start"]