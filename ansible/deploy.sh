#!/bin/bash
clear

#test
#xansible-playbook app.yml --check

#deploy
ansible-playbook app.yml -e "role_name=gs-actuator spring_boot_application_build=28"
