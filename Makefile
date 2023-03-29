name = inception

all:
	@printf "Launch configuration ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml up -d

build:
	@printf "Building configuration ${name}...\n"
	mkdir /home/mmounib/data/mariadb
	mkdir /home/mmounib/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build

down:
	@printf "Stopping configuration ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml down

clean: down
	@printf "Cleaning configuration ${name}...\n"
	@docker volume rm srcs_wordpress_volume
	@docker volume rm srcs_mariadb_volume
	@docker system prune -af
	sudo rm -rf /home/mmounib/data/wordpress
	sudo rm -rf /home/mmounib/data/mariadb

.PHONY	: all build down clean