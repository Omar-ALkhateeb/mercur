#!/bin/sh

cd apps/backend
yarn medusa db:create && yarn medusa db:migrate

echo "Running database migrations..."
yarn run seed || echo "Seeding failed, continuing..."

cd ../..
echo "Starting Medusa development server..."
yarn dev