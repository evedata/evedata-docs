build: pip-requirements
	uv run mkdocs build --strict

clean:
	rm -rf dist site .cache .ruff_cache .pytest_cache

deploy-staging: build
	pnpm run deploy:staging

deploy-production: build
	pnpm run deploy:production

dev:
	uv run mkdocs serve -a localhost:8080

fix: fix-markdown fix-python

fix-markdown:
	pnpm run fix:markdown

fix-python:
	uv run ruff check --fix

format: format-prettier format-python

format-prettier:
	pnpm run format:prettier

format-python:
	uv run ruff format

lint: lint-markdown lint-python

lint-markdown:
	pnpm run lint:markdown

lint-python:
	uv run ruff check

pip-requirements:
	uv pip freeze > requirements.txt

pre-commit:
	uv run pre-commit run

pre-commit-all:
	uv run pre-commit run --all-files

pre-commit-install:
	uv run pre-commit install --install-hooks

sync:
	uv sync --all-packages --all-extras --all-groups

type:
	uv run pyright
