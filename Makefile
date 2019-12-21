export RUBYLIB=$(realpath lib)

compose-setup: compose-build

compose:
	docker-compose up

# gcloud-builds-submit:
# 	gcloud builds submit --config cloudbuild.yaml .

compose-test:
	docker-compose run exercises make test

compose-lint:
	docker-compose run exercises make lint

compose-install:
	docker-compose run exercises bundle install --without tools

compose-bash:
	docker-compose run exercises bash

compose-build:
	docker-compose build

SUBDIRS := $(wildcard modules/**/*/.)

lint:
	yamllint modules

test: $(SUBDIRS)
$(SUBDIRS):
	@echo
	@ make test -s -C $@
	@echo

.PHONY: all $(SUBDIRS)
