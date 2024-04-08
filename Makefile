SHEll := /bin/zsh
.PHONY: venv

venv:
	poetry run poetry install

showdocs:
	@mkdocs serve
