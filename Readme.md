# Repository to explore using containers with VNC

Motivation - better understand how to troubleshoot or better learn docker

## Simple local usage

Docker command:
`docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc`

Access via:
Browse http://127.0.0.1:6080/

## VNC Viewer with password

Docker command:
`docker run -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=mypassword -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc`

Access via:
Use VNC Viewer with localhost:5900 and [mypassword]

## HTTP with password

docker run -p 6080:80 -e USER=myuser -e HTTP_PASSWORD=mypassword -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

-- did not worked out

## SSL connection 

### Generating self signed certificate

`mkdir -p ssl`
`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ssl/nginx.key -out ssl/nginx.crt`

Specify ssl port and forward...
`docker run -p 6081:443 -e SSL_PORT=443 -v ${PWD}/ssl:/etc/nginx/ssl -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc`

Access via https:/localhost:6081

Docker command:
`docker run -p 6080:80 -e HTTP_PASSWORD=mypassword -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc`

Access via:
localhost:80 and mypassword



# Reference Materials and FAQ

Docker Hub repo about docker-desktop-vnc-ubuntu
https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc

GitHub page of the author
https://github.com/fcwu/docker-ubuntu-vnc-desktop

Potentially another interesting example
https://blog.docker.com/2013/07/docker-desktop-your-desktop-over-ssh-running-inside-of-a-docker-container/



