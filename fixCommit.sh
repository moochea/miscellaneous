#!/usr/bin/bash

branchname=$(git rev-parse --abbrev-ref HEAD | sed 's/master/NO-NOT-MASTER/g')
message="$branchname $1"
echo $message
git commit -m "$message"
