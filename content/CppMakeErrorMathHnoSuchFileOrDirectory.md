D:\\Projects\\Libraries\\qwt-6.1.0&gt;c:\\Qt\\Tools\\mingw48\_32\\bin\\mingw32-make.exe
c:/Qt/Tools/mingw48\_32/bin/mingw32-make -f Makefile.Release
mingw32-make\[1\]: Entering directory 'D:/Projects/Libraries/qwt-6.1.0'
g++ -c -pipe -fno-keep-inline-dllexport -O2 -Wall -Wextra -frtti
-fexceptions -m threads -DUNICODE -DQT\_DLL -DQWT\_DLL -DQWT\_MAKEDLL
-DQT\_NO\_DEBUG -DQT\_GUI\_LIB -D QT\_CORE\_LIB -I. -I"include"
-I"C:\\Qt\\5.1.1\\mingw48\_32\\include" -I"C:\\Qt\\5.1.1\\mi
ngw48\_32\\include\\QtGui"
-I"C:\\Qt\\5.1.1\\mingw48\_32\\include\\QtCore" -I"src\\moc" -I
"C:\\Qt\\5.1.1\\mingw48\_32\\mkspecs\\win32-g++" -o
src\\obj\\qwt\_autoscl.o src\\qwt\_auto scl.cpp g++: error:
CreateProcess: No such file or directory Makefile.Release:1859: recipe
for target 'src/obj/qwt\_autoscl.o' failed mingw32-make\[1\]: \*\*\*
\[src/obj/qwt\_autoscl.o\] Error 1 mingw32-make\[1\]: Leaving directory
'D:/Projects/Libraries/qwt-6.1.0' makefile:34: recipe for target
'release' failed mingw32-make: \*\*\* \[release\] Error 2
D:\\Projects\\Libraries\\qwt-6.1.0&gt;In file included from
src\\qwt\_autoscl.cpp:10:0: include/qwt\_math.h:18:18: fatal error:
math.h: No such file or directory \#include \^ compilation terminated. t
't' is not recognized as an internal or external command, operable
program or batch file. Solution: Add the folder with cc1plus.exe to the
path. For me this was:
C:\\Qt\\Tools\\mingw48\_32\\libexec\\gcc\\i686-w64-mingw32\\4.8.0
