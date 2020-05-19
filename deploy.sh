#!/bin/sh

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

hugo

# Go To Public folder
cd public

git checkout master

git config --global user.email "abossard@gmail.com"
git config --global user.name "Andre Bossard"

cat index.html

git status

git add .

git status

# Commit changes.
msg="rebuilding site $(date)"
git commit -m "$msg"
git push origin master
