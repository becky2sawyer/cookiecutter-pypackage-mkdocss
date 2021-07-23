#!/bin/sh

cp README.md docs/index.md

git init
git config user.name "{{cookiecutter.github_account}}"
git config user.email {{cookiecutter.github_email}}
git remote add origin https://github.com/{{cookiecutter.github_account}}/{{cookiecutter.github_repo}}.git

git add .
git commit -m "living for today"
git branch -M main
