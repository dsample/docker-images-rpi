docker run -d \
  -p 8083:8083 \
  -p 8086:8086 \
  -v /srv/influxdb/meta:/influxdb/meta \
  -v /srv/influxdb/data:/influxdb/data \
  -v /srv/influxdb/wal:/influxdb/wal \
  --restart=always \
  --name influxdb \
  dsample/influxdb:rpi
