# Use the alpine base image (small)
FROM alpine:latest

# Copy just the index file into place
COPY /files /

# Install php
RUN apk update && \
    apk add nginx

# Ports we want in the container
EXPOSE 80

# Run the executable
CMD /usr/sbin/nginx
