#!/bin/bash

# $1 is branch name

BRANCH=$1
REMOTE_DIR=/home/devops
SPEC=devops@${HOST}:${REMOTE_DIR}
OPTION=StrictHostKeyChecking=no

KEY_FILE=gce-dev.key
HOST=onix-api.acd-np.its-software-services.com

if [ "${BRANCH}" == "production" ]; then
    KEY_FILE=gce-prod.key
    HOST=onix-api.acd.its-software-services.com
fi

# DO NOT cat any private key here
scp -i ${KEY_FILE} -o ${OPTION} app-start.bash ${SPEC}
scp -i ${KEY_FILE} -o ${OPTION} custom.cfg ${SPEC}
scp -i ${KEY_FILE} -o ${OPTION} docker-compose.yaml ${SPEC}
