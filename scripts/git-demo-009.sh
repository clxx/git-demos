#!/bin/bash

cd clone-a
echo 'First file, second line.' >> first.txt
git commit -am 'Second commit: First file, second line.'
echo
git tag -a v1.1 -m 'Version 1.1'
echo
echo 'First file, third line.' >> first.txt
git commit -am 'Third commit: First file, third line.'
echo
git tag -a v1.2 -m 'Version 1.2'
echo
git push --tags
echo
git log --pretty=oneline
echo
# Change history...
git filter-branch --env-filter '
email = 'new-address@example.com'
GIT_COMMITTER_EMAIL = "$email"
GIT_AUTHOR_EMAIL = "$email"
' -- --all