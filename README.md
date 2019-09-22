# Docker for ROS2

A repository to setup a very basic environment of ROS2

## How to use 

1. Clone this repository
```
git clone https://github.com/ActiveIntelligentSystemsLab/ros2-docker
```

2. Run an example `docker-compose`, which runs a talker and a listener program on separated containers
```
docker-compose up # This command automatically builds an image if there's no image
```
Or, you can just build the image by the following command:
```
docker-compose build
```

## TODO

- Add setting for GUI applications
