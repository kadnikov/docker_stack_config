#!/bin/bash
docker swarm init
sleep 5

NodeName=`docker node ls --format {{.Hostname}}`

docker network create --attachable -d overlay nw_doccloud_www
docker node update --label-add db_rw=yes $NodeName
docker node update --label-add tomcat=yes $NodeName
docker node update --label-add boot=yes $NodeName
docker node update --label-add apache2=yes $NodeName

read -s -p "Enter Postgres password: " mypassword
echo $mypassword | docker secret create POSTGRES_PASSWORD_FILE -

docker config create POSTGRES_CREATE_USER postgres/create_user.sql
docker config create POSTGRES_CREATE_DB  postgres/schema.sql
docker config create POSTGRES_LOAD_DATA  postgres/all_data.sql

docker secret create TOMCAT_CONTEXT_XML tomcat/conf/context.xml

docker config create APACHE2_HTTPD_CONF apache2/conf/httpd.conf