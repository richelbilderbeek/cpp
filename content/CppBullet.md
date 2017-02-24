



 

 

 

 

 

([C++](Cpp.htm)) [Bullet](CppBullet.htm)
========================================

 

[Bullet](CppBullet.htm) is a [3D](Cpp3d.htm) [physics](CppPhysics.htm)
[library](CppLibrary.htm).

 

[Bullet](CppBullet.htm) is easy to build with [Visual
Studio](CppVisualStudio.htm) under [Windows](CppWindows.htm). Sadly, I
was not able to find one full-code tutorial on their wiki that did
compile. I noticed that header files often needed to be renamed from
'btX.h' to 'b3X.h', so I assume the source code of the library changed,
without changing the tutorials.

Due to not being able to compile even the simplest example code, I gave
up on using Bullet.

 

One failed approach to build Bullet without [Visual
Studio](CppVisualStudio.htm) was to 'cd bullet3/build', 'premake4.exe
gmake', 'cd gmake', 'C:\\Progra\~1\\GnuWin32\\bin\\make.exe'. This
resulted in the error: ''cc' is not recognized as an internal or
external command, operable program or batch file.'

 

Another failed approach One failed approach to build Bullet without
[Visual Studio](CppVisualStudio.htm) was to use CMake: 'cd Libraries',
'mkdir bin', 'cd bin', 'cmake ../bullet3'. This resulted in the error:
'CMake Error: The source directory "D:/Projects/Libraries/bullet3" does
not appear to contain CMakeLists.txt.'

 

 

 

 

 

External links
--------------

 

-   [Bullet homepage](http://bulletphysics.org)
-   [Bullet GitHub](https://github.com/erwincoumans/bullet3)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
