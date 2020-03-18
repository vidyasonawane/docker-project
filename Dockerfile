# Specify base image
FROM alpine

# Install some dependenccies
RUN npm Install

#Default command
CMD ["npm","start"]

# To build the image: docker build .
