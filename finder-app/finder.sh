#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Require executing as follow: .finder.sh /tmp/aesd/assignment1 linux"
    exit 1
fi

filesdir=$1

if [ ! -d $filesdir ]; then
    echo "Error: $filesdir not valid"
    exit 1
fi

numfiles=$(find $filesdir -type f | wc -l)

searchstr="$2"
numlines=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $numfiles and the number of matching lines are $numlines"