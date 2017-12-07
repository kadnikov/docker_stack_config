#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   PERMISSION=sudo
fi
UserName=`whoami`

$PERMISSION usermod -a -G docker $UserName
$PERMISSION groupadd -g 999 postgres
$PERMISSION useradd -m -d /opt/doccloud/data -u 999 -g 999 -s /bin/false postgres
$PERMISSION chmod g+rwx /opt/doccloud/data/
$PERMISSION mkdir -m 770 /opt/doccloud/data/pgdata /opt/doccloud/data/admin
$PERMISSION chown -R 999:999 /opt/doccloud/data

$PERMISSION cp docker-portainer.service /etc/systemd/system/

$PERMISSION systemctl enable docker-portainer.service
$PERMISSION systemctl start docker-portainer.service