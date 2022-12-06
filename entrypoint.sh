#!/bin/bash

set -e

bundle check || bundle install --jobs 20 --retry 5

bundle exec rails db:migrate
echo 'Migrations Done'
bundle exec puma -C config/puma.rb
