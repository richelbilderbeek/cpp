



 

 

 

 

 

([C++](Cpp.md)) [Example 18: STL only console application, use of '-spec win32-g++'](CppQtCrosscompileToWindowsExample18.md)
==============================================================================================================================

 

Sure fail attempt at solving [How to cross-compile a Qt Creator project
from Ubuntu to a windows executable?](CppQtCrosscompileToWindows.md).

 

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): [GUI](CppGui.md) application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

Project options:

-   Unchecked 'Projects -&gt; Build Settings -&gt; General -&gt; Shadow
    build'
-   In 'Projects -&gt; Build Settings -&gt; Build steps -&gt; qmake
    -&gt; Additional arguments' added '-spec win32-g++' (without
    the apostrophs)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-29T10:39:29 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppQtCrossCompileToWindowsExample18 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout     << "I am\n"     << "* written using Qt Creator under Ubuntu\n"     << "* tested to compile under Ubuntu\n"     << "* tested to create a valid Ubuntu binary\n"     << "* tested to create an invalid Windows executable\n"     << "  (using -spec win32-g++)\n"; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Process

 

In Qt Creator, pressing 'Run' resulted in:

 

  --------------------------------------------------------
  ` Failed to start program. Path or permissions wrong?`
  --------------------------------------------------------

 

In the project's subfolder 'Debug' there was a file
'CppQtCrossCompileToWindowsExample18.exe' to be found.

 

Starting the executable with [Wine](CppWine.md):

 

  --------------------------------------------------
  ` wine CppQtCrossCompileToWindowsExample18.exe `
  --------------------------------------------------

 

Screen output:

 

  --------------------------------------------------------------------------------------------
  ` wine: Bad EXE format for Z:\home\richel\Desktop\CppQtCrossCompileToWindowsExample18.exe`
  --------------------------------------------------------------------------------------------

 

This approach is now estimated as a sure fail.

 

 

 

 

 





 



