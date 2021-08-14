THIS_FILE := $(lastword $(MAKEFILE_LIST))
GREEN=\033[0;32m
LIGHT_GRAY=\033[0;37m
NC=\033[0m #no color
BOLD=\033\e[1m
DEFAULT=\033\e[0m
GRAY=\033\e[2m
help:
	@echo -e "${GREEN}Commands:${NC}"
	@echo -e  '  ${LIGHT_GRAY}build        - Build all containers. One container: make build ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  up           - Up all containers. One container: make up ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  bu           - Build and Up all containers. One container: make bu ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  start        - Start all containers. One container: make start ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  pause        - Pause all containers. One container: make pause ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  unpause      - Unpause all containers. One container: make unpause ${GRAY}c=[container name]${DEFAULT}'
	@echo -e  '  down         - smth'
	@echo -e  '  destroy      - smth'
	@echo -e  '  stop         - smth'
	@echo -e  '  restart      - smth'
	@echo -e  '  logs         - smth'
	@echo -e  '  login        - smth'
	@echo -e  '  ps           - smth'
	@echo -e  '  db-shell     - smth'
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

