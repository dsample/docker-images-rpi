docker run -d \
  --net=host \
  --privileged \
  --restart=always \
  --name=node-red \
  -v /srv/node-red:/data \
  dsample/node-red-iot:rpi
