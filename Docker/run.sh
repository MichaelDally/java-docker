#!/bin/bash
ROOT_PATH=$(readlink -e `dirname $0`/..)
ENVIRONMENT=$1
echo ${ROOT_PATH}
echo "run.sh env" ${ENVIRONMEMNT}

# Docker command to run test
docker run --dns=#### --interactive --volume=${ROOT_PATH}/:/code --rm=true docker.repo.name/image/name:versionNumber /code/Docker/test.sh ${ENVIRONMENT}



#Load container for manual intervention
#docker run --dns=#### --interactive --volume=${ROOT_PATH}/:/code --rm=true docker.repo.name/image/name:versionNumbe /bin/bash
