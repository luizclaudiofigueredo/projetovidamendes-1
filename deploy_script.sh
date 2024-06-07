#!/bin/bash

set -e

# Variables
APP_DIR="/var/www/projetovidamendes/homologation/projetovidamendes-1"
RAILS_ENV="production"

# Navigate to the application directory
cd $APP_DIR

# Pull the latest code from the repository
git pull origin main

# Install/update dependencies
bundle install --without development test

# Run any pending database migrations
RAILS_ENV=$RAILS_ENV bundle exec rake db:migrate

# Precompile assets (if applicable)
RAILS_ENV=$RAILS_ENV bundle exec rake assets:precompile

# Restart the application server
sudo passenger-config restart-app /var/www/projetovidamendes/homologation/projetovidamendes-1

