#!/bin/sh

#Useless Use of Cat Award - http://porkmail.org/era/unix/award.html#cat

PKG_LIST=$(cat apt.list | grep -v -e '^#' -e '^$' apt.list | sort | uniq | xargs)

TARGET_FILE="install.sh"

echo "#!/bin/sh" > ${TARGET_FILE}

echo "sudo apt-get install --no-install-recommends \\" >> ${TARGET_FILE}

for p in ${PKG_LIST}; do
  echo "${p} \\" >> ${TARGET_FILE};
done


