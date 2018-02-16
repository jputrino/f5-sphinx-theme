#!/usr/bin/env bash

set -x
set -e

# Clone a test docs repo
git clone https://$GITHUB_TOKEN:x-oauth-basic@github.com/jputrino/test-deploy.git
cd test-deploy

# install dependencies
pip install -R requirements.txt

# build some test docs
make -C docs/ html

