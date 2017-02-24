\#!/bin/bash
myqmake="../../Libraries/mxe/usr/i686-pc-mingw32/qt5/bin/qmake"
\#Cleaning up rm \*.pro.user rm Makefile rm Makefile.\* rm -r release rm
-r debug rm ui\_\*.h rm qrc\_\*.cpp rm moc\_\*.cpp rm
object\_script\*.\* for myprofile in \`ls | egrep ".pro\\&gt;"\` do
  mytarget=\`echo \$myprofile | sed "s/\\.pro//"\`      \$myqmake
\$myprofile      if \[ ! -e Makefile \]   then     echo "FAIL: \$myqmake
\$myprofile"   fi      make      if \[ -e ./release/\$mytarget".exe" \]
  then     echo \$mytarget": SUCCESS"     cp ./release/\$mytarget".exe"
\~/bin/   else     echo \$mytarget": FAIL"   fi      \#Cleaning up   rm
Makefile   rm Makefile.\*   rm -r release   rm -r debug   rm ui\_\*.h
  rm qrc\_\*.cpp   rm moc\_\*.cpp   rm object\_script\*.\* done \#next
.pro file
