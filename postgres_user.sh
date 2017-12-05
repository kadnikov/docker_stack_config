#!/bin/bash
mkdir -p /opt/doccloud
groupadd -g 999 postgres
useradd -m -d /opt/doccloud/data -u 999 -g 999 -s /bin/false postgres
chmod g+rwx /opt/doccloud/data/
mkdir -m 770 /opt/doccloud/data/pgdata /opt/doccloud/data/admin
chown -R 999:999 /opt/doccloud/data