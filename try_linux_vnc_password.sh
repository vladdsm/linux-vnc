# command to run Linux machine in the container using VNC Viewer
docker run -p 6080:80 -p 5900:5900 -e VNC_PASSWORD=mother-day2019 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

# use vnc viewer to access port 5900
