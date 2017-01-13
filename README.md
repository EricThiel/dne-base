# dne-base

To use this, install Docker and do the following:

Download these files to a new directory. (e.g. /code)
Change to that directory, and run 'docker build  -t dnebase .'
Run the container 'docker run -i -t -v <full path to local directory>:/code dnebase bash'

Within container, the folder will be mapped to /code. You can run a local text editor and directly manage the files in <full path to local directory> (e.g. /code). You can use git within the container to check out sub-folders into the code directory. 
