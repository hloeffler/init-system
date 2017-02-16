#!/bin/sh
sudo apt-get install  --no-install-recommends $(cat apt.list| xargs)
