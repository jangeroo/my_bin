#!/bin/bash

if [ $1 == "-h" ]
then
	file=${2%.*}.h
else
	file=${1%.*}.c
fi

touch $file
open -a xcode $file
