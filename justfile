# https://just.systems/
set dotenv-load := false

@_default:
    just --list

setup:
    uv sync

docs:
    source .venv/bin/activate && cd docs && make html

open-docs: docs
    open docs/_build/html/index.html
