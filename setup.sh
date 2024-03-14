#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Use the desired Python version
PYENV_VERSION="3.10.13"

# Activate pyenv and set the Python version
eval "$(pyenv init --path)"
pyenv local $PYENV_VERSION

# Create a virtual environment
python -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install project requirements
pip install -r requirements.txt

# Install flake8 and pre-commit
pip install flake8 pre-commit

# Run flake8 to check code style
flake8 main.py

# Run pre-commit to install the git hook scripts
pre-commit install

# Run python -m py_compile to check for compilation errors
python -m py_compile main.py