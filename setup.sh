#!/bin/bash

THEME_DIR=themes/affiliates-jekyll-theme
# 1. Apply patches to theme
cd ${THEME_DIR}
git apply ../patches/config.patch
git apply ../patches/about.patch
cd ../../
echo "Applied patches"

# 2. Create symlink
cd ${THEME_DIR}
git apply ../patches/config.patch
ln -s ../../_posts _posts
cd assets
ln -s ../../../assets/images images
cd ..
cd ../../
echo "Created Sym link"
