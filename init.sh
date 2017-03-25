#!/bin/sh

PKG_LIST=$(grep --no-filename -v -e '^#' -e '^$' apt/*.list| sort | uniq | xargs)

TARGET_FILE="install.sh"

echo "#!/bin/sh" > ${TARGET_FILE}

echo "sudo apt-get install --no-install-recommends \\" >> ${TARGET_FILE}

for p in ${PKG_LIST}; do
  echo "${p} \\" >> ${TARGET_FILE};
done

  echo '&& echo "done"' >> ${TARGET_FILE};

chmod +x ${TARGET_FILE}
