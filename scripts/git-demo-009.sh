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
git push --all
echo
git log --pretty=oneline
echo

# Change history...
# Note: We deliberately do not use '--tag-name-filter cat' here!
FILTER_BRANCH_SQUELCH_WARNING=1 git filter-branch --env-filter '
EMAIL="new-address@example.com"
GIT_COMMITTER_EMAIL="$EMAIL"
GIT_AUTHOR_EMAIL="$EMAIL"
' -- --all
echo
git push --force-with-lease --all
echo
git log --pretty=oneline
echo
git checkout v1.1
echo

cd ../clone-b

git fetch --all
echo
git reset --hard @{u}
echo
git checkout v1.1
echo
git log --pretty=oneline
echo

cd ..
