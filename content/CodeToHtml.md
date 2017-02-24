\#!/bin/bash CODE\_TO\_HTML\_BIN=\~/bin/ToolCodeToHtmlConsole if \[ ! -e
\$CODE\_TO\_HTML\_BIN \] then   echo "ERROR: CodeToHtml binary not found
at "\$CODE\_TO\_HTML\_BIN   exit fi for folder in \`ls | egrep -v
"build-"\` do   echo \$folder   \$CODE\_TO\_HTML\_BIN ./\$folder done rm
tmp.txt rm trace\_out.txt mv \*.htm \~/GitHubs/RichelbilderbeekNl/Cpp
