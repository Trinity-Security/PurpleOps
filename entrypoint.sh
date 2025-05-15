#!/bin/sh

echo "Waiting for Mongo..."

while ! nc -z "$MONGO_HOST" 27717; do
    sleep 0.1
done

python seeder.py

exec "$@"
