\#!/bin/bash \#Script to check the status of MXE crosscompiles
myos="Cygwin" mytempfile="tmp'\$myos'.txt" if \[ -e \$mytempfile \] then
  rm \$mytempfile fi for mytest in BoostRegex BoostXpressive Cpp11 Qt
Qwt World do myfolder='CppHello'\$mytest'QtCreator'\$myos
myscript=\$myfolder'.sh' if \[ ! -d \$myfolder \] then   echo "Folder
'\$myfolder' not found"   continue fi cd \$myfolder if \[ ! -e
\$myscript \] then   echo "Compile script '\$myscript' not found"
  continue fi echo \$mytest &gt;&gt; ../\$mytempfile ./\$myscript |
egrep "SUCCESS|FAIL" &gt;&gt; ../\$mytempfile cd .. done cat
\$mytempfile | sed 'N;s/\\n/: /'
