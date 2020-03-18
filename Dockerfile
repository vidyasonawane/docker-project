# Specify base image
FROM node:alpine

# Add working directory
WORKDIR /usr/app

# Copy the package.json from local machine to container
COPY ./package.json ./
 
# Install some dependencies
RUN npm install

# Copy the content from local machine to container
COPY ./ ./

#Default command
CMD ["npm","start"]

# To build the image: docker build .
