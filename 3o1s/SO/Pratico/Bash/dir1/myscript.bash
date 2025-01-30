#!/bin/bash
# The previous line (comment) tells the operating system that
# this script is to be executed by bash
#
# This script selects and sorts the lines of a given file,
# except the first 5 and the last 5.
#
if [ $# -ne 1 ]
then
	echo "A single argument is mandatory" 1>&2
	exit 1
fi

if ! [ -f $1 ]
then
	echo "Given argument ($1) is not a regular file" 1>&2
	exit 1
fi

head -n -5 $1 | tail -n +6 | sort
