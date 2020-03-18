# docker-project

### Goal: 
  To create a tiny node J.S. web application, wrap it inside of a docker container and then be able to access that web application from a browser running on your local machine.


### Steps:
1. Create Node JS Web App
2. Create a Dockerfile
3. Build image from Dockerfile
4. Run image as Container
5. Connect to web app from browser

**1. Create Node JS App**
* First create package.json and index.js
* To install the node dependencies, run `npm install`
* To start the server, run `npm start` or `node index.js`

**2. Create a Dockerfile**
| Steps | Template  |Node Project   |
|---|---|---|---|---|
| 1  |Specify Base Image |FROM alpine |
| 2  |Run some commands to install additional programs |RUN npm install |
| 3  |Specify a command to run on container startup |CMD ["npm","start"] |
|

* To build the image, use `docker build .`
