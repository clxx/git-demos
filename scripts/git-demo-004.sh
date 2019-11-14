#!/bin/bash

git config --local push.default current

cd clone-a

git checkout -b feature/one
echo
echo 'First file, second line.' >> first.txt
git commit -am 'Second commit: First file, second line.'
echo
git push
echo

git checkout master
echo
git merge feature/one
echo
git push
echo
git log -p
echo

cd ..
