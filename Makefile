.PHONY: build
build:
	docker build --no-cache --tag boss_screen:$(shell echo $$RANDOM) .

.PHONY: up
up:
	@while true; do \
	  make build ; \
	  done

