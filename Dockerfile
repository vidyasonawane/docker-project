# Specify base image
FROM node:alpine

# Install some dependenccies
RUN npm install

#Default command
CMD ["npm","start"]

# To build the image: docker build .
