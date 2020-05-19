#!/bin/sh

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

hugo

# Go To Public folder
cd public

git config --global user.email "abossard@gmail.com"
git config --global user.name "Andre Bossard"

git add .

# Commit changes.
msg="rebuilding site $(date)"
git commit -m "$msg"
git push origin master
