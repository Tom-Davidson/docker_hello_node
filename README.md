# The simplest node app, in docker

## To just use it
 - `docker pull tomdavidson42/hello_node`
 - `docker run -d -p 8080:8080 tomdavidson42/hello_node`
 - `docker ps` to see what's running (node the CONTAINER ID)
 - open [http://localhost:8080/](http://localhost:8080/)
 - `docker stop <CONTAINER ID>`

## Connecting to docker hub
 - `export DOCKER_ID_USER="username"`
 - `docker login`

## Building the image
 - `docker build -t $DOCKER_ID_USER/hello_node .`
 - `docker push $DOCKER_ID_USER/hello_node`
