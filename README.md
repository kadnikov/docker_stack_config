# docker_stack_config

0. Install docker-ce version 17.09.0-ce (https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
1. Unzip pa_distr.zip to /opt/doccloud/ directory
2. Give permissions for shell files
3. Run ./postgres_user.sh and check output for errors
4. Restart shell to activate user group membership
4. Run ./single_node.sh and check output for errors
5. Open Portainer (http://vm_host:9000), set admin password and after login create new Stack with docker compose file from pa_core_compose.yml, disable access control checkbox
6. After Stack startup (all services up) you can open http://vm_host/iaadmin/docs (test/test) and http://vm_host/pgu/ (boot/boot)