



 

 

 

 

 

([C++](Cpp.md)) [Bullet](CppBullet.md)
========================================

 

[Bullet](CppBullet.md) is a [3D](Cpp3d.md) [physics](CppPhysics.htm)
[library](CppLibrary.md).

 

[Bullet](CppBullet.md) is easy to build with [Visual
Studio](CppVisualStudio.md) under [Windows](CppWindows.md). Sadly, I
was not able to find one full-code tutorial on their wiki that did
compile. I noticed that header files often needed to be renamed from
'btX.h' to 'b3X.h', so I assume the source code of the library changed,
without changing the tutorials.

Due to not being able to compile even the simplest example code, I gave
up on using Bullet.

 

One failed approach to build Bullet without [Visual
Studio](CppVisualStudio.md) was to 'cd bullet3/build', 'premake4.exe
gmake', 'cd gmake', 'C:\\Progra\~1\\GnuWin32\\bin\\make.exe'. This
resulted in the error: ''cc' is not recognized as an internal or
external command, operable program or batch file.'

 

Another failed approach One failed approach to build Bullet without
[Visual Studio](CppVisualStudio.md) was to use CMake: 'cd Libraries',
'mkdir bin', 'cd bin', 'cmake ../bullet3'. This resulted in the error:
'CMake Error: The source directory "D:/Projects/Libraries/bullet3" does
not appear to contain CMakeLists.txt.'

 

 

 

 

 

External links
--------------

 

-   [Bullet homepage](http://bulletphysics.org)
-   [Bullet GitHub](https://github.com/erwincoumans/bullet3)

 

 

 

 

 





 



