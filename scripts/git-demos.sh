#!/bin/bash

function configLocal {
    git config user.email 'ethanwest@example.com'
    git config user.name 'Ethan West'

    git config push.default current
}

rm -fr demo-repo.git
rm -fr clone-a
rm -fr clone-b

git init --bare demo-repo.git
echo

git clone demo-repo.git clone-a
echo

git clone demo-repo.git clone-b
echo

cd clone-a

configLocal
echo 'First file, first line.' > first.txt
git add .
echo
git commit -m 'First commit: First file, first line.'
echo
git push
echo

cd ../clone-b

configLocal
git pull
echo

cd ..

echo 'Learn'
echo
echo '1: Pull with merge commit (no conflict).'
echo '2: Pull with merge commit (conflict).'
echo '3: Pull with rebase (avoid a merge commit).'
echo '4: Feature branch (fast forward merge).'
echo '5: Feature branch (with squash merge).'
echo '6: Feature branch (squash commits only).'
echo '7: Interactive rebase (squash commits).'
echo '8: Soft reset (some kind of a last resort).'
echo
echo 'Explore'
echo
echo '9: Tags after history change.'
echo
read -p 'Enter your demo number: ' number
echo

./git-demo-$(printf "%03d" $number).sh
