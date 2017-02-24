\#!/bin/bash for file in \`find ./ -type d\` do   if \[ \$file = "./" \]
  then     continue   fi   cmd="zip -r "\$file".zip "\$file   \$cmd done
