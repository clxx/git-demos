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
# The push works because of the "git config push.default current".
# Otherwise you would need to use the following options/arguments:
# "git push --set-upstream origin feature/one"
git push
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

git merge --squash feature/one
echo
git commit -m 'Fifth commit: Squashed second and third commit.'
echo
git push
echo
git log -p
cd ..
