#!/bin/bash

source /.dockerenv

URL=$(curl -s https://api.github.com/repos/rancher/cli/releases/latest | jq -r ".assets[] | select(.name | contains(\"linux-amd64\")) | select(.content_type | contains(\"gzip\")) | .browser_download_url")

wget $URL
