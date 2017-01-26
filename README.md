To build the docker image:
$ git clone https://github.com/deepaksrivastav/docker-amq.git
$ cd docker-amq
$ docker build -t activemq:5.14.3 .

To run the image:
$ docker run -d --name amq -p 61616:61616 -p 8161:8161 activemq:5.14.3

You can also use the docker-compose to run this (refer to docker-compose.yml)
$ docker-compose -d up
