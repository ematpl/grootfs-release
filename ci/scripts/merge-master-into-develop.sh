#!/bin/sh
set -e -x

DEVELOP=$PWD/grootfs-release-develop

git clone ./grootfs-release-master ./release-merged

cd release-merged

git remote add local $DEVELOP

git fetch local
git checkout local/develop

git config --global user.email "cf-garden+garden-gnome@pivotal.io"
git config --global user.name "I am Groot CI"

git merge --no-edit master
