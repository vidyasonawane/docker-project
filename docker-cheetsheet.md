* Build the image: `docker build .`
* tag the image: `docker build -t vidya25/simpleweb .`
* Run the image: `docker run vidya25/simpleweb`
* Port forwarding: `docker run -p 8080:8080 vidya25/simpleweb`
* To look into files and folders inside container: `docker run -it vidya25/simpleweb sh`
* `Docker exec` to start up a second process inside of a running container. ` docker exec -it 88cfc20ad1d9 sh` 88cfc20ad1d9 is a container id.