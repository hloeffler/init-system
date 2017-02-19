#!/bin/sh
#Useless Use of Cat Award - http://porkmail.org/era/unix/award.html#cat
sudo apt-get install  --no-install-recommends $(cat apt.list| grep -v -e '^#' -e '^$' | sort | uniq | xargs)
