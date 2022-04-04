default: install

h help:
	@grep '^[a-z]' Makefile

install:
	bundle config set --local path vendor/bundle
	bundle install

s serve:
	cd blog && bundle exec jekyll serve

.PHONY: build
build:
	cd blog && JEKYLL_ENV=production bundle exec jekyll build -d ../build --trace