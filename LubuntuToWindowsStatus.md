\#!/bin/bash \#Script to check the status of MXE crosscompiles
myos="LubuntuToWindows" mytempfile='tmp'\$myos'.txt' if \[ -e
\$mytempfile \] then   rm \$mytempfile fi for mytest in
BoostLexical\_Cast BoostLexical\_CastQt5 BoostRegex BoostRegexQt5
BoostXpressive Cpp11 Qt Qwt World WorldQt5 do
myfolder='CppHello'\$mytest'QtCreator'\$myos myscript=\$myfolder'.sh' if
\[ ! -d \$myfolder \] then   echo "Folder '\$myfolder' not found"
  continue fi cd \$myfolder if \[ ! -e \$myscript \] then   echo "MXE
crosscompiler script '\$myscript' not found"   continue fi ./\$myscript
| egrep "SUCCESS|FAIL" &gt;&gt; ../\$mytempfile cd .. done clear cat
\$mytempfile rm \$mytempfile
