# The simplest node app, in docker
 - `export DOCKER_ID_USER="username"`

## To just use it
 - `docker pull $DOCKER_ID_USER/hello_node`
 - `docker run -d -p 8080:8080 $DOCKER_ID_USER/hello_node`
 - `docker ps` to see what's running (node the CONTAINER ID)
 - open [http://localhost:8080/](http://localhost:8080/)
 - `docker stop <CONTAINER ID>`

## Connecting to docker hub
 - `docker login`

## Building the image
 - `docker build -t $DOCKER_ID_USER/hello_node .`
 - `docker push $DOCKER_ID_USER/hello_node`

## Deploying to Kubernetes (optional)
 - `kubectl run hello-node --image=index.docker.io/$DOCKER_ID_USER/hello_node --port=8080`
 - Check the deployment is there with `kubectl get deployments`
 - Check the pods are up with `kubectl get pods`
 - Check it's running properly before exposure with `kubectl exec -ti hello-node-7ddff5778f-nt2g6 curl localhost:8080`
 - Expose with `kubectl expose deployment/hello-node --type="NodePort" --port=8080`
 - Check with `kubectl get services`
 - Get a full description with `kubectl describe services/hello-node`
 - Pull the NodePort into an environment variable for easier use with `export NODE_PORT=$(kubectl get services/hello-node -o go-template='{{(index .spec.ports 0).nodePort}}') && echo NODE_PORT=$NODE_PORT`
 - Open the app in a web browser: [http://<IP_OF_ANY_NODE>:<NODE_PORT>/](http://<IP_OF_ANY_NODE>:<NODE_PORT>/)

## Further Reading

The [interactive tutorials](https://kubernetes.io/docs/tutorials/kubernetes-basics/cluster-interactive/) on [kubernetes.io](https://kubernetes.io/) are pretty good.
