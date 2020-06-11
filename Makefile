-include common.mk

export RUBYLIB=$(realpath lib)

compose-setup: compose-build compose-install

compose:
	docker-compose up

compose-install:
	docker-compose run exercises bundle install --without tools

compose-build:
	docker-compose build

code-lint:
	bundle exec rubocop modules
