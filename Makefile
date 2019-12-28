build: Dockerfile
	docker-compose build && \
	docker tag mysql mysql_playground && \
	docker run -it -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=kadai mysql_playground /bin/bash


run:
	docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root mysql_playground /bin/bash