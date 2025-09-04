#!/bin/sh
yarn medusa db:create && yarn medusa db:migrate

echo "Running database migrations..."
yarn run seed || echo "Seeding failed, continuing..."

echo "Starting Medusa development server..."
yarn medusa develop --types=false