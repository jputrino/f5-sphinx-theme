#!/usr/bin/env bash

set -x
set -e

# Clone a test docs repo
git clone https://$GITHUB_TOKEN:x-oauth-basic@github.com/jputrino/test-deploy.git master
cd test-deploy

# install dependencies
pip install --user requirements.txt

# build some test docs
make -C docs/ html

