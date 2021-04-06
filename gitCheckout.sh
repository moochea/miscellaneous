#!/usr/bin/bash


if [ -f ~/prevbranch.txt ]; then
#    echo "prevbranch.txt exists"
    prevbranch=$(cat ~/prevbranch.txt)
else
    prevbranch="master"
fi

# echo $prevbranch

if [ "$1" = "-" ]
then
        switchBranch=$prevbranch

else
        switchBranch=$1
fi


prevbranch=$(git rev-parse --abbrev-ref HEAD)
echo $prevbranch > ~/prevbranch.txt

echo "Stored $prevbranch"
# echo "Switching to branch $switchBranch"
git checkout $switchBranch
