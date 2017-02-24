[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [QCanvas: No such file or directory](CppCompileErrorQCanvasNoSuchFileOrDirectory.htm)
======================================================================================================

 

[Compile error](CppCompileError.htm).

 

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------
  ` /MyFolder/main.cpp:1: error: QCanvas: No such file or directory`
  --------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm): Console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-26T10:46:45 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppCompileErrorQCanvasNoSuchFileOrDirectory CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

  ----------------------------------------
  ` #include <QCanvas>  int main() {  }`
  ----------------------------------------

 

-   [Download the Qt Creator project
    'CppCompileErrorQCanvasNoSuchFileOrDirectory' with this
    error (zip)](CppCompileErrorQCanvasNoSuchFileOrDirectory.zip)

 

 

 

 

 

Solution
--------

 

As far as I can understand, QCanvas is a Qt3 [class](CppClass.htm) that
is obsolete in [Qt Creator](CppQtCreator.htm) 2.0.0.

 

The code below, although [\#including](CppInclude.htm) the proper
[header file](CppHeaderFile.htm), will give the [compile
error](CppCompileError.htm) ':: error: collect2: ld returned 1 exit
status'.

 

  ----------------------------------------------
  ` #include <qt3/qcanvas.h>  int main() {  }`
  ----------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
