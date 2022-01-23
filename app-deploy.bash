#!/bin/bash

# $1 is branch name

REMOTE_DIR=/home/devops
HOST=onix-api.acd-np.its-software-services.com
SPEC=devops@${HOST}:${REMOTE_DIR}
KEY_FILE=gce-dev.key
OPTION=StrictHostKeyChecking=no

# DO NOT cat any private key here
scp -i ${KEY_FILE} -o ${OPTION} app-start.bash ${SPEC}
scp -i ${KEY_FILE} -o ${OPTION} custom.cfg ${SPEC}
scp -i ${KEY_FILE} -o ${OPTION} docker-compose.yaml ${SPEC}
