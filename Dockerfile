FROM node

# set the work directory, 
WORKDIR /app

# the source and destination
# . means the current folder's content
# /app is the destination, since the work directory is set to /app, so all the contents from current directory
# will be copied to ./app eventually.
COPY . /app

RUN npm install

EXPOSE 80

# CMD will not be run when an image is created, but will run when a container is started based on this image
CMD [ "node", "server.js" ]