# It's always a good practice to specify the verison of the base image, in case it pulls latest and causing changes unexpected
FROM node:16

# set the work directory, 
WORKDIR /app

COPY package.json /app

RUN npm install

# the source and destination
# . means the current folder's content
# /app is the destination, since the work directory is set to /app, so all the contents from current directory
# will be copied to ./app eventually.
COPY . /app


# this is just acting like a comment, actually, but it's best practiced.
EXPOSE 80

# CMD will not be run when an image is created, but will run when a container is started based on this image
CMD [ "node", "server.js" ]