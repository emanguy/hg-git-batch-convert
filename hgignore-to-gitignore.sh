#!/bin/bash

cat .hgignore | sed -r "/syntax: glob/d" >> ../..hgignore
mv ../..hgignore .hgignore
git mv .hgignore .gitignore
git add .gitignore
git status
git commit -m "Convert hgignore to gitignore"
