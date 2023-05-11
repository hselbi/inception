name = inception

all :
	@printf "Launch configuration ${name}...\n"
	@cp ~/.env srcs/
	@cd srcs && docker-compose up -d --build

build :
	@printf "Building configuration ${name}...\n"
	@cp ~/.env srcs/
	@cd srcs && docker-compose build

down :
	@printf "Stopping configuration ${name}...\n"
	cd srcs && docker-compose down

re : down
	@printf "Rebuild configuration ${name}...\n"
	@cd srcs && docker-compose up -d --build

clean : down
	@printf "Cleaning configuration ${name}...\n"
	@yes | docker system prune -a

fclean : down
	@printf "Total clean of all configurations docker\n"
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force

.PHONY : all build down re clean fclean