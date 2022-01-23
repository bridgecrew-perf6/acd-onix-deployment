#!/bin/bash

# $1 is branch name

HOST=onix-api.acd-np.its-software-services.com
KEY_FILE=gce-dev.key
OPTION=-o StrictHostKeyChecking=no

# DO NOT cat any private key here
scp -i ${KEY_FILE} ${OPTION} app-start.bash ${HOST}
scp -i ${KEY_FILE} ${OPTION} custom.cfg ${HOST}
scp -i ${KEY_FILE} ${OPTION} docker-compose ${HOST}
