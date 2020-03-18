1.  _/bin/sh: npm: not found_
    _The command `/bin/sh -c npm Install` returned a non-zero code: 127_

    NPM not being available by default inside of our base image i.e Alpine

    Approach 1: Find a different base image that has node and NPM pre-installed inside of it.

    Approach 2: Continue using the Alpine image and run an additional command to install NPM inside of our image.

    We will go with 1st approach and find the image in [Docker Hub](https://hub.docker.com/)


2.  _npm WARN saveError ENOENT: no such file or directory, open '/package.json'_

    when you are building an image none of the files inside of your project directory are available inside the container by default. they are all completely segmented out. They are not at all available and you cannot assume that any of these files are available unless you specifically allow it inside of your doctor file.

    Use Copy instruction.
    `Copy ./ ./`

    COPY < path to the folder on your local file system rellative to build context > < path that you want to copy that stuff to inside the container>

