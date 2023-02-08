### Inspect image
```docker
docker image insepct imangeId
```

### copy files from outside to inside
* Note that the folder will be created if it doesn't exist inside the container
```docker
docker cp  source(local) containername:/pathInsideContainer 
```

### copy files from inside to outside
```docker
docker cp  containername:/pathInsideContainer source(local)
```


### To build image with repository name and tag 
``` docker
docker build -t goals:16 .
```


### Named volume will not be removed, when the running container is deleted.
### Annonymous volumes will be immediately destroyed/deleted once the running container is deleted
### Both named & Annoymous volumes are managed by docker and it's hard to find where it is(Hidden on your computer, managed by docker).
### You can't created named volumes inside a dockerfile, you can only create annonymous volumes in dockerfile
``` docker
# like this:
  VOLUME ["path"]
```
```docker 
# This is the way to set a named volume when creating a running container.
docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback feedback-app:volumes
```


# Bind mounts
## we as devloper set the path to where the volume is binded.
## It's perfect for persistent data.
## It's set when you run the container.
```docker
docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback -v "/Users/vincent/Code/feedback_backup" feedback-app:v1
```
The above command, that -v "" part is the absolute path of the machine/node that's running this container.



# dockerignore files

You can add more "to-be-ignored" files and folders to your .dockerignore file.

For example, consider adding the following to entries:

Dockerfile
.git
This would ignore the Dockerfile itself as well as a potentially existing .git folder (if you are using Git in your project).

In general, you want to add anything which isn't required by your application to execute correctly.