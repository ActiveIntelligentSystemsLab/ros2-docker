NAME=aisl/ros2
VERSION=dashing
CONTAINER_NAME=ros2

build:
	docker build -t $(NAME):$(VERSION) .
			
restart: stop start

start:
	docker start $(VERSION)
run:
	docker run -it \
		--privileged \
		--net host \
		--runtime=nvidia \
		-e DISPLAY=$$DISPLAY \
		-e QT_X11_NO_MITSHM=1 \
		-v $$HOME/.Xauthority:/root/.Xauthority \
		-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
		-v $$PWD/../workspace/:/root/workspace/ \
		--name $(CONTAINER_NAME) \
		$(NAME):$(VERSION)
	
contener=`docker ps -a -q`
image=`docker images | awk '/^<none>/ { print $$3 }'`
	
clean:
	@if [ "$(image)" != "" ] ; then \
		docker rmi $(image); \
	fi
	@if [ "$(contener)" != "" ] ; then \
		docker rm $(contener); \
	fi
	
stop:
	docker rm -f $(CONTAINER_NAME)
	
attach:
	docker start $(CONTAINER_NAME) && docker exec -it $(CONTAINER_NAME) /bin/bash
	
logs:
	docker logs $(CONTAINER_NAME)

rm:
	docker rm $(CONTAINER_NAME)
