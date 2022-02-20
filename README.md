# reverse

This is a container for a minimalist reverse proxy using nginx.

## Build the Docker Image

`docker build --no-cache --tag reverse .`

## Run the Docker Container

Note: This runs as the user _nginx_ and in the forground because we've configured those options in the `nginx.conf` file.

```
docker run \
    --hostname reverse \
    --publish "80:80" \
    --name reverse \
    --detach \
    reverse \
    /usr/sbin/nginx
```

```
docker run \
    --hostname reverse \
    --publish "80:80" \
    --name reverse \
    --detach \
    --interactive \
    reverse \
    /bin/sh
```
