#!/bin/bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
export PATH="$HOME/.poetry/bin:$PATH"
poetry env use $(which python)
poetry install
cd OWL2Vec-Star/
poetry run python setup.py install