
 

 

 

 

 

([C++](Cpp.md)) [file not recognized: File format not recognized](CppMiscErrorFileFormatNotRecognized.md)
===========================================================================================================

 

[Misc error](CppMiscError.md)

 

 

 

 

 

History
-------

 

I was busy solving the [Qt FAQ](CppQtFaq.md) [How to cross-compile a Qt
Creator project from Ubuntu to a windows
executable?](CppQtCrosscompileToWindows.md).

 

 

 

 

 

Project environment
-------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): console application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)
-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-23T19:13:58 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppQtCrosscompileToWindowsExample1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp #Set the C compiler to the mingw32 C compiler QMAKE_CC  = i586-mingw32msvc-gcc #Set the C++ compiler to the mingw32 C++ compiler QMAKE_CXX = i586-mingw32msvc-g++`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout <<     "I am developed under Unbuntu, "     "and I will run under Windows\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

Unknown

 

 

 

 

 

 

