
# Youtube Helper

Fast youtube video comprehension, featuring summarization, outlining, and intuitive playback controls.

A microservice architechture project, implemented with python, fastapi, faster-whisper, yt-dlp etc.

## Including below repos:
- https://github.com/zw3413/ytb-helper
- https://github.com/zw3413/ytb-gateway
- https://github.com/zw3413/ytb-transcriber
- https://github.com/zw3413/queue-worker



# Development setup
## Clone all repositories
```
mkdir ytb-services
cd ytb-services
git clone git@github.com:zw3413/ytb-deployment.git
git clone git@github.com:zw3413/ytb-gateway.git
git clone git@github.com:zw3413/ytb-transcriber.git
git clone git@github.com:zw3413/queue-worker.git
```
## Start the services
```
cd ytb-deployment
cp env/.env.example .env
docker compose -f docker/docker-compose.yml -f docker/docker-compose.dev.yml up
```