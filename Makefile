SHELL=/bin/sh

include .env

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  stop                ✋ Stop the MySQL container"
	@echo "  start               🚀 Starts the MySQL container"
	@echo "  delete              🗑 Deletes all the MySQL data"
	@echo "  install             📥 Download docker"
	@echo "  mysql-cli           📡 Conectarse a MySQL por terminal"
	@echo "  shell               📡 Shell on the docker container to interact"
	@echo "  load-comercial-db   🔼 Load comercial DB on MySQL"

install:
	@echo "✔️ Checking if you have the docker requiroments"
	./scripts/docker-compose.sh

start:
	@echo "🚀 Starts the MySQL container"
	docker-compose up -d

stop:
	@echo "✋ Stop the MySQL container"
	docker-compose down

delete: stop
	@echo "🗑 Deletes all the MySQL data"
	sudo rm -rf data

mysql-cli: 
	@echo "📡 Connection to MySQL Server inside the 🐳 docker container"
	docker exec -it ${MYSQL_HOST} mysql -u ${MYSQL_USER} -p${MYSQL_PASSWD}

shell:
	@echo "📡 Connection to a shell inside the 🐳 docker container"
	docker exec -it ${MYSQL_HOST} /bin/bash

load-comercial-db:
	@echo "📡 Connection to MySQL Server inside the 🐳 docker container"
	docker exec -i ${MYSQL_HOST} mysql -u ${MYSQL_USER} -p${MYSQL_PASSWD} < ${SQL_DUMP}/db.sql
