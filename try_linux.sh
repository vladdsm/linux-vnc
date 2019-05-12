# command to try image that expose linux machine in vnc
docker run -p 6080:80 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

echo "use this url to use linux machine: http://127.0.0.1:6080/ " 
