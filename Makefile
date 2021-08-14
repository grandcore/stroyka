THIS_FILE := $(lastword $(MAKEFILE_LIST))
GREEN=\033[0;32m
LIGHT_GRAY=\033[0;37m
NC=\033[0m #no color
BOLD=\033\e[1m
DEFAULT=\033\e[0m
GRAY=\033\e[2m
help:
	@echo -e "${GREEN}Commands:${NC}"
	@echo -e  '  ${LIGHT_GRAY}build        - Build all containers. The one container: make build ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  up           - Up all containers. The one container: make up ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  bu           - Build and Up all containers. One container: make bu ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  start        - Start all containers. The one container: make start ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  pause        - Pause all containers. The one container: make pause ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  unpause      - Unpause all containers. The one container: make unpause ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  down         - Down all containers. The one container: make down ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  destroy      - Destroy all containers. The one container: make destroy ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  stop         - Stop all containers.The onne container: make stop ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  restart      - Restart all containers. The one container: make restart ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  logs         - Logs from all containers. The one container: make logs ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  login        - Login in container: make login ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  ps           - Show status of containers'
	@echo -e  '  db-shell     - Connect to db-shell: make db-shell c=[container name]'
	@echo -e  '  db-connect   - smth'
	
build:
	
	docker-compose -f docker-compose.yml build $(c)
up:
	docker-compose -f docker-compose.yml up -d $(c)
bu:
	docker-compose -f docker-compose.yml build $(c)
	docker-compose -f docker-compose.yml up  -d  $(c)
start:
	docker-compose -f docker-compose.yml start $(c)
pause:
	docker-compose -f docker-compose.yml pause $(c)
unpause:
	docker-compose -f docker-compose.yml unpause $(c)
down:
	docker-compose -f docker-compose.yml down $(c)
destroy:
	docker-compose -f docker-compose.yml down -v $(c)
stop:
	docker-compose -f docker-compose.yml stop $(c)
restart:
	docker-compose -f docker-compose.yml stop $(c)
	docker-compose -f docker-compose.yml up -d $(c)
logs:
	docker-compose -f docker-compose.yml logs --tail=100 -f $(c)

ps:
	docker-compose -f docker-compose.yml ps
login:
	docker-compose -f docker-compose.yml exec $(c) sh

#app-frontend-generate:
#	docker container exec -d frontend npm run generate

db-shell:
	value=$(./env)
	echo "$value"
	docker-compose -f docker-compose.yml exec $(c) mongo --port $${PORT}

db-connect:
	mongo --port $(p)

