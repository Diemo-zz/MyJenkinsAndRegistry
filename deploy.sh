#! /usr/bin/env sh

# Exit in case of error
set -e


docker-compose -f docker-compose.yml  config > docker-stack.yml

docker-auto-labels docker-stack.yml

docker stack deploy -c docker-stack.yml --with-registry-auth "diarmaiddeburca"