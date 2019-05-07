FROM ubuntu:18.04
RUN echo "step 1"
RUN apt-get -y update && apt-get -y install nginx
