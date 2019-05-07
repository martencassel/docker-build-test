#!/bin/sh

docker run --rm -it \
	--name img \
	--volume $(pwd):/home/martendocker/src:ro \
	--workdir /home/martendocker/src \
    --volume "${HOME}/.docker:/root/.docker:ro" \
	--security-opt seccomp=unconfined \
	--security-opt apparmor=unconfined \
	martendocker/img:0.4.0 build -d -t martendocker/myimage .
