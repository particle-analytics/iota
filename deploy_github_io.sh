#!/bin/bash



DOC_ROOT=./docs


#  Send new documentation to github for particle-analytics.github.io/docs

cd $DOC_ROOT/
git init
git commit --allow-empty -m 'update book'
git checkout -b gh-pages
git add .
git commit -am "update book"
git push git@github.com:particle-analytics/docs gh-pages --force


