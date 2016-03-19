#!/bin/bash
cd code/Docker
ENVIRONMENT=$1
echo "test.sh environment =  ${ENVIRONMENT}"
echo "using command mvn -f /code/Docker/pom.xml test --offline -DEnvironment=$1"
mvn -f /code/Docker/pom.xml test --offline -DEnvironment=${ENVIRONMENT}