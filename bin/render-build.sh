#!/usr/bin/env bash
set -o errexit

# Ensure storage directory exists
mkdir -p storage

# Install sqlite3 dependencies
apt-get update && apt-get install -y sqlite3 libsqlite3-dev

# Clear bundler config
bundle config --delete without
bundle config --delete deployment

# Install gems
bundle install --full-index

# Setup database and assets
bundle exec rails db:migrate
bundle exec rails assets:precompile