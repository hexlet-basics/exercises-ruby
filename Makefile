-include /opt/basics/common/common.mk

export RUBYLIB=$(realpath lib)
export PATH:=$(realpath bin):$(PATH)

compose-setup: compose-build compose-install

compose:
	docker-compose up

compose-install:
	docker-compose run exercises bundle install --without tools

compose-bash:
	docker-compose run exercises bash

compose-build:
	docker-compose build

code-lint:
	bundle exec rubocop modules

compose-test:
	docker-compose run exercises make test
