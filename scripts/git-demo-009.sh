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
FILTER_BRANCH_SQUELCH_WARNING=1 git filter-branch --env-filter '
EMAIL="new-address@example.com"
GIT_COMMITTER_EMAIL="$EMAIL"
GIT_AUTHOR_EMAIL="$EMAIL"
' -- --all
echo
git push --force-with-lease --tags
echo
git log --pretty=oneline
echo
git checkout v1.1
echo
git checkout master
echo
git gc
echo
git checkout v1.1
echo
