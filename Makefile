SHELL := /bin/bash

.PHONY: dev lint ;

dev:
	@if ! type yarn > /dev/null 2>&1; then \
		echo "yarn command is not installed. Try to install with `npm`"; \
		npm install -g yarn; \
	fi
	yarn install

lint:
	./node_modules/htmlhint/bin/htmlhint --ignore node_modules/\*\*


