

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![STL](PicStl.png)![Qt Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable? Approach 23: Hello World](CppQtCrosscompileToWindowsExample23.htm), using [MinGW](CppMinGw.htm) build script
================================================================================================================================================================================================================================================================================================================================================================

 

Approach to [cross-compile a Qt Creator project from Ubuntu to a windows
executable?](CppQtCrosscompileToWindows.htm).

 

 

 

 

 

Environment information
-----------------------

 

[Operating system(s) or programming environment(s)](CppOs.htm):

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.04 LTS Lucid
    Lynx

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) Console application

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): from [GCC](CppGcc.htm),
    shipped with [Qt Creator](CppQt.htm) 2.0.0

 

 

 

 

 

[Project file](CppQtProjectFile.htm)
------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2310-09-29T14:58:49 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloWorld CONFIG   += console windows CONFIG   -= app_bundle qt TEMPLATE = app SOURCES += main.cpp QMAKESPEC = win32-msvc LIBS+= -L/usr/lib/gcc/i586-mingw32msvc/4.2.1-sjlj -lstdc++ #LIBS+= -L/usr/lib/gcc/i586-mingw32msvc/4.2.1-sjlj -lgcc LIBS+= -L/usr/lib/gcc/i586-mingw32msvc/4.2.1-sjlj -lsupc++ #LIBS+= -L/usr/i586-mingw32msvc/lib -lmingw32 #LIBS+= -L/usr/i586-mingw32msvc/lib -lmsvcrt QMAKE_CC   = i586-mingw32msvc-g++ QMAKE_CXX  = i586-mingw32msvc-g++ QMAKE_LINK = i586-mingw32msvc-ld QMAKE_SPECS = msvc QMAKE_CFLAGS = -o QMAKE_CXXFLAGS = -o #QMAKE_LFLAGS = -c #QMAKE_LFLAGS = -o -arch=win32`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

[Hello World](CppHelloWorld.htm) source code.

 

 

 

 

 

Process
-------

 

Download the shell script from \[1\]. Started the shell script. It seems
to be some kind of installer. Running it ended with:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ./x86-mingw32-build.sh: checking package availability ...  gcc-core-3.4.5-20060117-2-src.tar.gz ... missing ... ./x86-mingw32-build.sh: unable to continue`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Abandoning this approach.

 

 

 

 

 

External links
--------------

 

-   [MinGW cross compiler for Linux build
    environment](http://www.mingw.org/wiki/LinuxCrossMinGW)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [MinGW cross compiler for Linux build
    environment](http://www.mingw.org/wiki/LinuxCrossMinGW)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
