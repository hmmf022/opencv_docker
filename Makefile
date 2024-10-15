build: main.cpp
	g++ main.cpp `pkg-config --cflags opencv4 pkg-config --libs opencv4`

run:
	./a.out

docker_build:
	docker build --no-cache -t cv .

bash:
	@docker run --rm -it --user ubuntu --privileged --env="DISPLAY=$(DISPLAY)" -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v $(shell pwd)/:/work cv bash

.PHONY: build run docker_build bash

