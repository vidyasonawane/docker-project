# Specify base image
FROM node:alpine

# Copy the content from local machine to container
COPY ./ ./
 
# Install some dependencies
RUN npm install

#Default command
CMD ["npm","start"]

# To build the image: docker build .
