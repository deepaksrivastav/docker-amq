### To build the image:
```bash
$ git clone https://github.com/deepaksrivastav/docker-amq.git
$ cd docker-amq
$ docker build -t activemq:5.14.3 .
```

### To run the image:
```bash
$ docker run -d --name amq -p 61616:61616 -p 8161:8161 activemq:5.14.3
```

### docker-compose
You can both build and run the image using docker-compose (refer to docker-compose.yml)
```bash
$ docker-compose build
$ docker-compose -d up
```

### Web Console
| Tables        | Are           |
| ----- | ---- |
| AMQ Port | 61616 |
| Web Console Port | 8161 |
| Username | admin |
| Password | admin |
