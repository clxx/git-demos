#!/bin/bash

cd clone-a
git checkout -b feature/one
echo
echo 'First file, second line.' >> first.txt
git commit -am 'Second commit: First file, second line.'
echo
echo 'First file, third line.' >> first.txt
git commit -am 'Third commit: First file, third line.'
echo

git checkout master
echo
echo 'Second file, first line.' > second.txt
git add .
echo
git commit -m 'Fourth commit: Second file, first line.'
echo
git push

echo
git checkout feature/one
echo
git rebase -i master
echo
git push
echo
git log -p
echo

git checkout master
echo
git merge feature/one
echo
git push
echo
git log -p
cd ..
