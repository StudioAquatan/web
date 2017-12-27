#!/usr/bin/env bash

ssh -p $SSH_PORT $DEPLOY_USER@$SSH_HOST <<EOF
  docker exec -it web sh -c 'cd /usr/share/nginx/html && git pull'
EOF