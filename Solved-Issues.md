1.  /bin/sh: npm: not found
    The command `/bin/sh -c npm Install` returned a non-zero code: 127

    NPM not being available by default inside of our base image i.e Alpine

    Approach 1: Find a different base image that has node and NPM pre-installed inside of it.

    Approach 2: Continue using the Alpine image and run an additional command to install NPM inside of our image.

    We will go with 1st approach and find the image in [Docker Hub](https://hub.docker.com/)

