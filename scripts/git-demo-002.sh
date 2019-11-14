#!/bin/bash

cd clone-a
echo 'First file, second line (1).' >> first.txt
git commit -am 'Second commit: First file, second line (1).'
echo
git push
cd ..

echo

cd clone-b
echo 'First file, second line (2).' >> first.txt
git commit -am 'Third commit: First file, second line (2).'
echo
git push
echo
git pull --no-edit
echo
cat first.txt
echo
echo 'First file, first line.' > first.txt
echo 'First file, second line.' >> first.txt
git commit -am 'Fourth commit: Fixed merge conflict.'
echo
git push
echo
git log -c
cd ..
