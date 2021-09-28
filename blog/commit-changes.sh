#!/bin/bash

commit_msg=$0
if [$# -eq 0]; 
    then echo "no commit message was provided. using default"
    commit_msg="updating blog" 
fi

cd elhayra.github.io && git pull && cd ..

bundle exec jekyll build

cp -rf _site/* elhayra.github.io/blog

cd elhayra.github.io
git add .
git commit -m $commit_msg 
git push

echo "Done"

