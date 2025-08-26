-include /opt/basics/common/common.mk

compose-setup: compose-build compose-install

compose:
	docker-compose up --abort-on-container-exit

compose-install:
	docker-compose run --rm exercises bundle install

compose-bash:
	docker-compose run --rm exercises bash

compose-down:
	docker-compose down -v --remove-orphans

compose-build:
	docker-compose build

compose-test:
	docker-compose run --rm exercises make test

compose-code-lint:
	docker-compose run --rm exercises make code-lint

compose-lint:
	docker-compose run --rm exercises make code-lint

compose-description-lint:
	docker-compose run --rm exercises make description-lint

compose-schema-validate:
	docker-compose run --rm exercises make schema-validate

ci-check:
	docker-compose --file docker-compose.yml down -v --remove-orphans
	docker-compose --file docker-compose.yml build
	docker-compose --file docker-compose.yml up --abort-on-container-exit

code-lint:
	bundle exec rubocop modules
