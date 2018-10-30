docker-compose \
-f docker-compose.yml \
-f docker-compose.override.yml \
-f .debug/docker-compose.debug.yml \
up -d --build --force