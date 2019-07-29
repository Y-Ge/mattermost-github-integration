#!/bin/bash
Python3.7 -m venv ./.venv
source ./.venv/bin/activate
pip3.7 install pip -U
pip3.7 install pip-review pylint yapf -U
# pip-review --auto
pip3.7 install -r requirements.txt
deactivate
