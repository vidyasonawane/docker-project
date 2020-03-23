* Build the image: `docker build .`
* tag the image: `docker build -t vidya25/simpleweb .`
* Run the image: `docker run vidya25/simpleweb`
* Run the image in the background i.e. without printing logs on the screen: `docker run -d redis`
* Port forwarding: `docker run -p 8080:8080 vidya25/simpleweb`
* To look into files and folders inside container: `docker run -it vidya25/simpleweb sh`
* `Docker exec` to start up a second process inside of a running container. ` docker exec -it 88cfc20ad1d9 sh` 88cfc20ad1d9 is a container id.
* List down the running containers: `docker ps`
* List all the containers: `docker ps -all`
* To stop the container: `docker stop <container id>`
* Run images using docker compose: `docker-compose up`
* Stop all the containers started using docker-compose: `docker-compose down`