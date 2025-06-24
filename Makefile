.PHONY: infra-start infra-cleanup infra-restart

# start new infra for local debugging
# if there is a pgsql container already in running, run 'make run-db-migration' to do flyway migration
infra-start:
	docker-compose -f docker-compose.test.yml up -d

# stop containers and remove volumes
infra-cleanup:
	docker-compose -f docker-compose.test.yml down
	rm -rf ./docker/postgres/datas

# restart infra
infra-restart: infra-cleanup infra-start