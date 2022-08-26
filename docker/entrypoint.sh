#!/bin/sh

echo "================================================================================"

# if [ ! -d "/todos-app/node_modules" ]
# then
#     echo "node_modules dose not exist!"
#     yarn install --check-files
# else 
#     echo "node_modules exist!"
# fi


set -e
bundle check || bundle install --binstubs="/usr/local/bundle"

set -e
yarn check || yarn install --binstubs="/todos-app/node_modules"

rails db:migrate RAILS_ENV=development
rm -f /todos-app/tmp/pids/server.pid
 exec "$@"