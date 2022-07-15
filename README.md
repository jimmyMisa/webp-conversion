# Generate a webp within a defined folder

## Installation
Create a `${docker-compose.yml}`
```
version: "3.9"  # optional since v1.27.0
services:
  systemimage:
    build: .
    image: jimmysk5/webp-conversion
    container_name: webp_server
    ports:
      - ${PORT}
    volumes:
      - ./install:/var/www/install/
      - ${FOLDER}:/var/www/application/
    command: "tail -F /var/www/install/log.txt"
    networks:
        - dev
    extra_hosts:
      - "webpserver:host-gateway"
networks:
  dev:
```
Create a `${Dockerfile}`
```
FROM jimmysk5/webp-conversion

WORKDIR /var/www/application
```

Configure the .env file
```
FOLDER=path to the image list
PORT=if require to define external port, or just use "44000:8000"
```

## Usage
```
docker exec -it webp_server bash -c ". /profile.sh && cd /var/www/run && node run.js"
```