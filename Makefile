THIS_FILE := $(lastword $(MAKEFILE_LIST))

all: help

install:
	@scripts/install/install.sh

new:
	@scripts/new.sh

build:
	@scripts/build.sh

help:
	@scripts/help.sh

.PHONY: install new build help
