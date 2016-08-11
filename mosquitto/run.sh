docker run -d
--restart=always
-p 1883:1883
-p 9001:9001
-v /srv/mqtt/config:/mqtt/config:ro
-v /srv/mqtt/log:/mqtt/log
-v /srv/mqtt/data:/mqtt/data
--name mqtt
dsample/mosquitto:rpi
