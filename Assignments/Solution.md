## Docker files already put into those two folders

Following commands are used to complete the assignment:

``` docker
# Note that the ImageRepoName:Tag is what's used in this case to create a image.
docker build -t assignment_node:v1 .
docker image ls
docker image rm imageId

## Note that the imageRepo:Tag is a must-have combination to run this container.
## --rm means when the container is stopped, it will be removed automatically.
docker run -p 3000:3000 -d --name nodeapp --rm assignment_node:v1

docker stop nodeapp
```


