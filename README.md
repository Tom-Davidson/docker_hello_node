# The simplest node app, in docker

## To just use it
 - `docker pull tomdavidson42/hello_node`

## Connecting to docker hub
 - `export DOCKER_ID_USER="username"`
 - `docker login`

## Building the image
 - `docker build -t $DOCKER_ID_USER/hello_node .`
 - `docker push $DOCKER_ID_USER/hello_node`
