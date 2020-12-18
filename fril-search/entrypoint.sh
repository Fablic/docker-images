#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /usr/src/fril-search/tmp/pids/server.pid

# gitlabのファイル参照
make

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
