
 

 

 

 

 

([C++](Cpp.md)) [QCanvas: No such file or directory](CppCompileErrorQCanvasNoSuchFileOrDirectory.md)
======================================================================================================

 

[Compile error](CppCompileError.md).

 

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------
  ` /MyFolder/main.cpp:1: error: QCanvas: No such file or directory`
  --------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): Console Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
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

 

As far as I can understand, QCanvas is a Qt3 [class](CppClass.md) that
is obsolete in [Qt Creator](CppQtCreator.md) 2.0.0.

 

The code below, although [\#including](CppInclude.md) the proper
[header file](CppHeaderFile.md), will give the [compile
error](CppCompileError.md) ':: error: collect2: ld returned 1 exit
status'.

 

  ----------------------------------------------
  ` #include <qt3/qcanvas.h>  int main() {  }`
  ----------------------------------------------

 

 

 

 

 

 

