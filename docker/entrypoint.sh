#!/usr/bin/env sh
set -e

bundle exec rake db:create
bundle exec rake db:migrate

mkdir -p /app/tmp /app/tmp/pids
# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid
rm -f /app/tmp/pids/puma.state

exec "$@"
