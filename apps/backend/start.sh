#!/bin/sh

echo "Running database migrations..."
yarn medusa db:migrate

echo "Seeding database..."
yarn medusa exec ./src/scripts/seed.ts || echo "Seeding failed, continuing..."

echo "Starting Medusa development server..."
yarn medusa develop --types=false