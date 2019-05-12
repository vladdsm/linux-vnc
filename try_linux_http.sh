# run linux machine using http to container
docker run -p 6080:80 -e USER=myself -e HTTP_PASSWORD=mday2019 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

# access with localhost:80
