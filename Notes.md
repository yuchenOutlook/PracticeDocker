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