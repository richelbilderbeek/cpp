#!/bin/bash

for html_filename in `ls *.htm`
do
  echo $html_filename
  md_filename=$(basename "$html_filename" .htm)".md"
  echo $md_filename
  pandoc $html_filename -o $md_filename
done