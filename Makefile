.PHONY: help install uninstall

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	.venv

uninstall:
	rm -rf .venv

.venv: pyproject.toml poetry.lock
	poetry install
