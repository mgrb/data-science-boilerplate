SHEll := /bin/zsh
.PHONY: setup

setup:
	@poetry shell
	@poetry install
showdocs:
	@mkdocs serve