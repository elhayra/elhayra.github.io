#!/bin/bash

commit_msg="updating blog"

cd elhayra.github.io && git pull && cd ..

bundle exec jekyll build

cp -rf _site/* elhayra.github.io/blog

cd elhayra.github.io
git add .
git commit -m $commit_msg 
git push

cd ..
git add .
git commit -m $commit_msg
git push

echo "Done"

