1.  Specify the working directory.

    Rather than copying everything directly into the root project directory, copy everything in a nested directory instead.

    Reason behind that is, if we happen to have any files or folders that conflict with a default folder system, we might accidentally overwrite some existing files or folders inside the container which is definitely not ideal.

    add `WORKDIR /usr/app` inside docker file.  any instructions added after this line in docker file, will be executed relative to this folder.

2.  The order in which you put all the instructions into your docker file, it does make a difference.

    The best practice is to segment out the copy operations to make sure that you're only copying the bare minimum for each successive step.