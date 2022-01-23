#!/bin/bash

ENV_FILE=.env

mkdir -p ${HOME}/data/postgres
mkdir -p ${HOME}/data/onix-api

source "custom.cfg"

gcloud secrets versions access latest --secret="acd-onix-${STAGE}-secrets" > secrets.cfg

cat custom.cfg > ${ENV_FILE}
cat secrets.cfg >> ${ENV_FILE}
echo "DATA_DIR=${HOME}/data" >> ${ENV_FILE} 

docker-compose up -d
