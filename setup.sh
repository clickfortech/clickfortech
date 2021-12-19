#!/bin/bash

# 1. Apply patches to theme
cd themes/affiliates-jekyll-theme/
git apply ../patches/config.patch
git apply ../patches/about.patch
cd ../../
echo "Applied patches"

# 2. Create symlink
cd themes/affiliates-jekyll-theme/
ln -s ../../_posts _posts
cd assets
ln -s ../../../assets/images images
cd ..
cd ../../
echo "Created Sym link"
