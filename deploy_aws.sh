#!/bin/bash



DOC_ROOT=./docs_nice


#  Send new documentation to github for particle-analytics.github.io/docs

cd $DOC_ROOT

scp -r * ubuntu@54.77.168.189:/usr/share/nginx/html/docs/

