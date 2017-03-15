#!/bin/bash

set -euo pipefail
IFS=$'\n\t'


curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts > hosts
grep -v -e "^#" -e "^0.0.0.0" -e "^$" -e "^.*#" hosts

#BASE_DIR="${HOME}/github.com/StevenBlack/"
#
#mkdir -p ${BASE_DIR}
#cd ${BASE_DIR}
#[[ -d hosts ]] || git clone https://github.com/StevenBlack/hosts.git
#cd hosts
#git pull
