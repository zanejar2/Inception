COMPOSE = ./srcs/docker-compose.yml

build:
	mkdir /home/chagilan/data/wordpress
	mkdir /home/chagilan/data/mariadb
	docker compose -f ${COMPOSE} build 

up: 
	docker compose -f ${COMPOSE} up -d

down :
	docker compose -f ${COMPOSE} down

clean:
	docker system prune -af
	sudo rm -rf /home/chagilan/data/wordpress
	sudo rm -rf /home/chagilan/data/mariadb