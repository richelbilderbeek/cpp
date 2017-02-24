

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Example 19: STL only console application, use of '-spec cygwin-g++'](CppQtCrosscompileToWindowsExample19.htm)
===============================================================================================================================

 

Sure fail attempt at solving [How to cross-compile a Qt Creator project
from Ubuntu to a windows executable?](CppQtCrosscompileToWindows.htm).

 

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm): [GUI](CppGui.htm) application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

Project options:

-   Unchecked 'Projects -&gt; Build Settings -&gt; General -&gt; Shadow
    build'
-   In 'Projects -&gt; Build Settings -&gt; Build steps -&gt; qmake
    -&gt; Additional arguments' added '-spec cygwin-g++' (without
    the apostrophs)

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-29T10:39:29 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppQtCrossCompileToWindowsExample19 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout     << "I am\n"     << "* written using Qt Creator under Ubuntu\n"     << "* tested to compile under Ubuntu\n"     << "* tested to create a valid Ubuntu binary\n"     << "* tested to create an invalid Windows executable\n"     << "  (using -spec win32-g++)\n"; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Process

 

In Qt Creator, pressing 'Run' resulted in a working Ubuntu executable.

 

Copying the source to a Cygwin folder, a make was attempted:

 

  ---------
  ` make`
  ---------

 

Screen output:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /usr/bin/qmake-qt4 -spec /usr/share/qt4/mkspecs/cygwin-g++ -unix CONFIG+=debug -o Makefile CppQtCrossCompileToWindowsExample19.pro /usr/bin/qmake-qt4: /usr/bin/qmake-qt4: cannot execute binary file make: *** [Makefile] Error 126`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This approach is estimated to be a sure fail.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
