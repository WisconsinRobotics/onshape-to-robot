# Dev Testing

## Docker Setup

These are the instructions for developing on docker. We have only tested on Ubuntu and Windows

### 1. Install and Start Docker
Make sure you have installed docker. You can install docker [here for windows](https://docs.docker.com/desktop/install/windows-install/) or [here for linux](https://docs.docker.com/desktop/install/linux/).

Now make sure docker is started.

### 2. Build and Start The Container
Now  build the container image and start the container. Make sure you are in this directories root directory. These commands use the current directory as the containers file system so any changes you make to the files on your host machine will be mirrored in the container. These commands also allow the containers display to be forwarded to your host machine so that you can see it.

**If you are on linux...**
```bash
sudo docker build -t onshape-to-robot .
sudo docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/workspace --net=host onshape-to-robot
```

**If you are on Windows...**
```bash
docker build -t onshape-to-robot .
docker run -it -e DISPLAY=host.docker.internal:0.0 -v ${PWD}:/workspace --net=host onshape-to-robot
```

### 3. Setup repo
```bash
python3 setup.py install
```



## Running
First you will need your config.json.

Next run:
```bash
onshape-to-robot [directory containing config.json]
```