#!/bin/bash

cd clone-a
echo 'First file, second line.' >> first.txt
git commit -am 'Second commit: First file, second line.'
echo
git push
cd ..

echo

cd clone-b
echo 'Second file, first line.' > second.txt
git add .
echo
git commit -m 'Third commit: Second file, first line.'
echo
git push
echo
git pull --rebase
echo
git push
echo
git log -p
cd ..
