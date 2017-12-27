#!/bin/bash

# normal deploy
COMMAND="docker exec web sh -c 'cd /usr/share/nginx/html && git pull'"

# when cron job
if [ ${TRAVIS_EVENT_TYPE} = "cron" ]; then
  COMMAND="cd /opt/web && docker-compose up -d --build"
fi

# exec
ssh -o StrictHostKeyChecking=no -i /tmp/deploy_key deploy@aqua.aquatan.studio ${COMMAND}