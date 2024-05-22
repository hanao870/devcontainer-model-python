#!/bin/sh

pip install --no-cache-dir --upgrade pip
pip install -r requirements.txt
pip install -r .devcontainer/devpkg_requirements.txt
pre-commit install
pre-commit install-hooks
