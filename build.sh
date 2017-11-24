#!/bin/bash

# dependencies for gitbook:
#   sudo apt-get install nodejs
#   sudo apt-get install npm
#   sudo npm -g install gitbook
# 






echo "  "
echo " -------------------- "
echo "  "
echo "  BUILDING DOCS FOR: $i"
echo "  "
echo " -------------------- "
echo "  "

DOC=./_book
SRC=`pwd`

rm -rf $DOC
rm -rf $SRC/_book

# mkdir $DOC
# cd $DOC
# git clone git@github.com:particle-analytics/iota.git .
# # git checkout origin/gh-pages -b gh-pages
# # git checkout git@github.com:particle-analytics/iota gh-pages
# git checkout -b gh-pages
# cd $SRC


gitbook init  .
# cp ./book_nice.json ./book.json
# cp ./book_origin.json ./book.json
gitbook install
# gitbook build . --config ./book.json --output=$DOC
gitbook build . $DOC

# # gitbook build ./$i -f pdf --config ./$i/book.json --output=./$i/_book
# gitbook pdf . ./iota_suite.pdf
# rm ./book.json

# echo "docs.particle-analytics.com" > $DOC/CNAME

#  Send new documentation to github for particle-analytics.github.io/docs

# cd $DOC
# # cp -rf $SRC/_book/* .
# git init
# git commit --allow-empty -m 'update book'
# git checkout -b gh-pages
# git add *
# git commit -am "update book"
# # git push origin gh-pages
# git push git@github.com:particle-analytics/iota gh-pages --force




cd $DOC/
git init
git commit --allow-empty -m 'update book'
# git checkout
git checkout -b gh-pages
git add .
git commit -am "update book"
git push git@github.com:particle-analytics/iota gh-pages --force
# git push git@github.com:particle-analytics/particle-analytics.github.io master --force


