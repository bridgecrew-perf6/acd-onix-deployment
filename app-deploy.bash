#!/bin/bash

# $1 is branch name

REMOTE_DIR=/home/devops
HOST=onix-api.acd-np.its-software-services.com
KEY_FILE=gce-dev.key
OPTION=-o StrictHostKeyChecking=no

# DO NOT cat any private key here
scp -i ${KEY_FILE} ${OPTION} app-start.bash ${HOST}:${REMOTE_DIR}
scp -i ${KEY_FILE} ${OPTION} custom.cfg ${HOST}:${REMOTE_DIR}
scp -i ${KEY_FILE} ${OPTION} docker-compose ${HOST}:${REMOTE_DIR}
