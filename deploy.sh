#!/bin/bash

# Exit on error
set -e

# Load environment variables
if [ -f .env ]; then
    source .env
fi

# Default values
REGISTRY=${REGISTRY:-"localhost:5000"}
TAG=${TAG:-$(date +%Y%m%d_%H%M%S)}

# Build and push images
echo "Building and pushing images with tag: $TAG"

services=("ytb-gateway" "ytb-fastwhisper" "queue-worker")

for service in "${services[@]}"; do
    echo "Building $service..."
    docker compose build $service
    
    echo "Pushing $service to registry..."
    docker compose push $service
done

# Deploy using docker compose
echo "Deploying services..."
docker compose -f docker-compose.yml up -d

echo "Deployment completed successfully!"

# Optional: Show logs
echo "Showing logs... (Ctrl+C to exit)"
docker compose logs -f
