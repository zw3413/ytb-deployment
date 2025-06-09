
# Clone all repositories
mkdir ytb-services
cd ytb-services
git clone git@github.com:your-org/ytb-deployment.git
git clone git@github.com:your-org/ytb-gateway.git
git clone git@github.com:your-org/ytb-fastwhisper.git
git clone git@github.com:your-org/queue-worker.git

# Development setup
cd ytb-deployment
cp env/.env.example .env
docker compose -f docker/docker-compose.yml -f docker/docker-compose.dev.yml up