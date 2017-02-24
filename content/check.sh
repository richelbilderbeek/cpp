#!/bin/bash

error_code=0

for filename in `ls *.htm`;
do
  echo $filename
  result=`tidy -errors -quiet $filename`
  if [ ! -n $result ];
  then
    error_code=1
  fi
done

exit $error_code
