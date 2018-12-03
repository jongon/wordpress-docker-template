sh install.sh

docker-compose \
-f docker-compose.yml \
-f docker-compose.override.yml \
up -d --build --force