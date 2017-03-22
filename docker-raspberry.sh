#! /bin/sh

curl -sSL get.docker.com | sh
usermod -aG docker pi

curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

systemctl enable docker


git clone https://github.com/RADIO-PROJECT-EU/MainController.git

# docker run -p 8083:8083 -p 8086:8086 -d -n influxdb -v /home/pi/MainController/config/influxdb.conf:/etc/influxdb/influxdb.conf --restart=always radioproject/influxdb
# docker ps -a
# docker rm -fv influxdb
# docker logs influxdb
