#!/bin/bash
systemctl stop docker-portainer.service
systemctl disable docker-portainer.service
rm /etc/systemd/system/docker-portainer.service
systemctl daemon-reload
userdel -r postgres

systemctl stop docker.service
sleep 20
apt-get remove docker-ce
rm -rf /var/lib/docker/
