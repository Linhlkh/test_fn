all: build up

detached: build upd

build:
	docker compose -f docker-compose.yml build

up:
	docker compose -f docker-compose.yml up

upd:
	docker compose -f docker-compose.yml up -d

down:
	docker compose -f docker-compose.yml down

clean:
	docker compose -f docker-compose.yml down --volumes

fclean: clean
	docker system prune -af
	docker volume prune -f

.PHONY: all detached build up upd down clean fclean