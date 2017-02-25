#!/bin/sh

#Useless Use of Cat Award - http://porkmail.org/era/unix/award.html#cat

PKG_LIST=$(cat apt.list | grep -v -e '^#' -e '^$' apt.list | sort | uniq | xargs)

sudo apt-get install --no-install-recommends ${PKG_LIST}


