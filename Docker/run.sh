#!/bin/bash
ROOT_PATH=$(readlink -e `dirname $0`/..)
ENVIRONMENT=$1
echo ${ROOT_PATH}
echo "run.sh env" ${ENVIRONMEMNT}

# Docker command to run test
#docker run --dns=172.16.140.100 --interactive --volume=${ROOT_PATH}/:/code --rm=true distro.skybet.net/oxiregression/soapui /code/Docker/test.sh
docker run --dns=172.16.140.100 --interactive --volume=${ROOT_PATH}/:/code --rm=true distro.skybet.net/oxiregression/soapui:0.1 /code/Docker/test.sh ${ENVIRONMENT}
#docker run --dns=172.16.140.100 --interactive --tty --volume=${ROOT_PATH}/:/code --rm=true distro.skybet.net/oxiregression/soapui bash


#Load container for manual intervention
#docker run --dns=172.16.140.100 -i  -t -v ${ROOT_PATH}/:/code --rm=true oxiregression/soapui /bin/bash