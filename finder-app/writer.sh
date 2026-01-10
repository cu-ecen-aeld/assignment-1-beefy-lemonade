#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Require executing as follow: writer.sh /tmp/aesd/assignment1/sample.txt ios"
    exit 1
fi

writefile=$1
writestr=$2

dir=$(dirname $writefile)

mkdir -p $dir


echo $writestr > $writefile