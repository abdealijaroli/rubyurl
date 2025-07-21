#!/usr/bin/env bash
set -o errexit

# Create storage directory for SQLite
mkdir -p storage

# Continue with regular build
bundle install
bundle exec rails db:migrate
bundle exec rails assets:precompile