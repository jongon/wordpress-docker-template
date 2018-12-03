APPLICATION_NAME=$(grep APPLICATION_NAME .env | xargs);
APPLICATION_NAME=${APPLICATION_NAME#*=}

if [ `docker inspect -f {{.State.Running}} $APPLICATION_NAME.debug.wordpress` = 'false' ]; then
  sh install.sh;

  docker-compose \
  -f docker-compose.yml \
  -f docker-compose.override.yml \
  -f ./debug/docker-compose.debug.yml \
  up -d --build --force;
fi