# Specify base image
FROM node:alpine

# Add working directory
WORKDIR /usr/app

# Copy the content from local machine to container
COPY ./ ./
 
# Install some dependencies
RUN npm install

#Default command
CMD ["npm","start"]

# To build the image: docker build .
