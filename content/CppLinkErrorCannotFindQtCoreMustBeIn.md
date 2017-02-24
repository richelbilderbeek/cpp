
 

 

 

 

 

([C++](Cpp.md)) [cannot find -lQtCore, and I want
it](CppLinkErrorCannotFindQtCoreMustBeIn.md)

 

[link error](CppLinkError.md): [cannot find
-lQtCore](CppLinkErrorCannotFindQtCore.md) and I want it.

 

 

 

 

 

History
-------

 

Caused while trying to solve the [Qt FAQ](CppQtFaq.md) [How to
cross-compile a Qt Creator project from Ubuntu to a windows
executable?](CppQtCrosscompileToWindows.md).

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): [GUI](CppGui.md) application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)
-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-23T19:13:58 # #------------------------------------------------- QT       += core QT       -= gui #LIBS += -L/usr/lib -lQtCore #LIBS += -L/usr/local/lib -lQtCore #LIBS += -L/usr/local/lib -lQtGui TARGET = CppQtCrosscompileToWindowsExample1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp #Set the C compiler to the mingw32 C compiler QMAKE_CC  = i586-mingw32msvc-gcc #Set the C++ compiler to the mingw32 C++ compiler QMAKE_CXX = i586-mingw32msvc-g++ #Set the linker to the mingw32 C++ compiler QMAKE_LINK = i586-mingw32msvc-g++`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout <<     "I am developed under Unbuntu, "     "and I will run under Windows\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Observations
------------

 

A makefile is successfully produced. When calling make in the makefile's
folder, the following command was shown to give the error:

 

  -----------------------------------------------------------------------------------------------------------
  ` make i586-mingw32msvc-g++  -o CppQtCrosscompileToWindowsExample1 main.o -L/usr/lib -lQtCore -lpthread `
  -----------------------------------------------------------------------------------------------------------

 

Adding one,two or all of these lines below did not solve the problem:

 

  ---------------------------------------------------------------------------------------------------
  ` LIBS += -L/usr/lib -lQtCore LIBS += -L/usr/local/lib -lQtCore LIBS += -L/usr/local/lib -lQtGui`
  ---------------------------------------------------------------------------------------------------

 

If, in the makefile I change the following line:

  -------------------------------------------------------------------------------------------
  ` LIBS          = $(SUBLIBS)  -L/usr/lib -L/usr/lib -L/usr/local/lib -lQtCore -lpthread `
  -------------------------------------------------------------------------------------------

 

To this line:

  -------------------------------
  ` LIBS          = $(SUBLIBS)`
  -------------------------------

 

An then call make:

 

  ---------
  ` make`
  ---------

 

A Windows executable is produced.

 

 

 

 

 

Solution
--------

 

Unknown.

 

My hypothesis: when cross-compiling, one needs to cros-compile the
libraries first! In this case, QtCore!

 

 

 

 

 

 

