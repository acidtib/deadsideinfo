run:
	docker-compose up --build

docker.build:
	docker build -t deadsideinfo/app_service:latest .

docker.db.setup:
	docker-compose run app rake db:setup

docker.db.migrate:
	docker-compose run app rake db:migrate

docker.db.seed:
	docker-compose run app rake db:seed

docker.logs:
	docker-compose logs --follow

docker.tag:
	docker tag deadsideinfo/app_service:latest hub.ergot.space/deadsideinfo/app_service:latest

docker.push:
	docker image push hub.ergot.space/deadsideinfo/app_service:latest