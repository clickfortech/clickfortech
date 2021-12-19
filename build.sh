#!/bin/bash

export JEKYLL_ENV=production

THEME_DIR=themes/affiliates-jekyll-theme
SITE_REPO=../clickfortech.github.io
SITE_REPO_FROM_THEME=../../../clickfortech.github.io

# 1. Build
cd ${THEME_DIR}
bundle exec jekyll build

# 2. Copy Site content
if [ -d "${SITE_REPO_FROM_THEME}" ]; then
    rm ${SITE_REPO_FROM_THEME}/* -rf
    cp _site/* "${SITE_REPO_FROM_THEME}" -rf
    echo "copied to ${SITE_REPO_FROM_THEME}"
else
    echo "[${SITE_REPO_FROM_THEME}] not found. So not copied"
    pwd
    ls -l ${SITE_REPO_FROM_THEME}
fi

cd ../..

# 3. Post build copy
if [ -d "{SITE_REPO}" ]; then
    cp site-assets/README.md ../${SITE_REPO}
    cp site-assets/CNAME ../${SITE_REPO}
fi
