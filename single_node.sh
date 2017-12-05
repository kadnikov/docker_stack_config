#!/bin/bash
docker network create --attachable -d overlay nw_doccloud_www
docker node update --label-add db_rw=yes ubuntu16
docker node update --label-add tomcat=yes ubuntu16
docker node update --label-add boot=yes ubuntu16
docker node update --label-add apache2=yes ubuntu16
echo “udoccloud” | docker secret create POSTGRES_PASSWORD_FILE -

docker config create POSTGRES_CREATE_USER postgres/create_user.sql
docker config create POSTGRES_CREATE_DB  postgres/schema.sql
docker config create POSTGRES_LOAD_DATA  postgres/all_data.sql