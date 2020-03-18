1.  _**/bin/sh: npm: not found**_
    _**The command `/bin/sh -c npm Install` returned a non-zero code: 127**_

    NPM not being available by default inside of our base image i.e Alpine

    Approach 1: Find a different base image that has node and NPM pre-installed inside of it.

    Approach 2: Continue using the Alpine image and run an additional command to install NPM inside of our image.

    We will go with 1st approach and find the image in [Docker Hub](https://hub.docker.com/)


2.  _**npm WARN saveError ENOENT: no such file or directory, open '/package.json'**_

    when you are building an image none of the files inside of your project directory are available inside the container by default. they are all completely segmented out. They are not at all available and you cannot assume that any of these files are available unless you specifically allow it inside of your doctor file.

    Use Copy instruction.
    `Copy ./ ./`

    COPY < path to the folder on your local file system rellative to build context > < path that you want to copy that stuff to inside the container>

3.  _**On localhost:8080, Site can't be reached error**_

    Our browser is making a request to localhost:8080 which is essentially a reference to your current machine. By default,on port 8080, no traffic that is coming into your computer or into your local host network is routed into the container.
    
    Container has its own isolated set of ports that can receive traffic. In order to make sure that any request from either your computer or some outside computer will be redirected into the container, We have to set up a explicit **port mapping**.

    A port mapping, when someone makes a request to a given port on your local network, take that request and automatically forward it to some port inside the container, In other words, if anyone makes a request to localhost:8080, take that request automatically forward it into the container on port 8080 where the node application can then receive it and process the request and eventually respond to it.

    This is only talking about incoming requests. Your doctor container can by default make requests on its own behalf to the outside world. 
    
    port forwarding stuff is strictly a run time constraint. We don't make any changes on dockerfile.

    `docker run -p 8080:8080 vidya25/simpleweb`

    docker run -p < Port on local machine >:< Port inside container > < Image name ot id>

    These two ports need not to be identical.


