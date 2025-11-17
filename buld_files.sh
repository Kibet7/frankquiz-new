#!/bin/bash

# Install Python dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Run Django migrations
echo "Running migrations..."
python manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput --clear

# Make sure staticfiles directory exists
mkdir -p staticfiles

echo "Build completed successfully!"