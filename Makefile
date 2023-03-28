name = inception

all:
	@printf "Launch configuration ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml up -d

build:
	@printf "Building configuration ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	@printf "Stopping configuration ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml down

clean: down
	@printf "Cleaning configuration ${name}...\n"
	@docker system prune -af
	@docker system prune --volumes

.PHONY	: all build down re clean