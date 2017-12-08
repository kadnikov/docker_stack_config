# docker_stack_config

0. Install docker-ce version 17.09.0-ce (https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
1. Unzip pa_distr.zip to /opt/doccloud/ directory
2. Give permissions for shell files
3. Run ./postgres_user.sh and check output for errors
4. Restart shell to activate user group membership
5. Run ./single_node.sh and check output for errors
6. Open Portainer (http://<vm_host>:9000), set admin password and choose local environment 
7. Login to Portainer and create new Stack with docker compose file from pa_core_compose.yml, disable access control checkbox
8. After Stack startup (all services up) you can open http://<vm_host>/iaadmin/docs (test/test) and http://<vm_host>/pgu/ (boot/boot)