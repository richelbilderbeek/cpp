
 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'glutInit'](CppLinkErrorUndefinedReferenceToGlutInit.md)
==================================================================================================

 

[Link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:7: error: undefined reference to 'glutInit' :: error: collect2: ld returned 1 exit status`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

 

The following source code was used:

 

  ----------------------------------------------------------
  ` #include <GL/glut.h>  int main() {   glutInit(0,0); }`
  ----------------------------------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-13T09:39:02 # #------------------------------------------------- QT       += core QT       -= gui TARGET = MyTarget CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.md) against the GLUT
[library](CppLibrary.md). Add the following line to your [project
file](CppQtProjectFile.md):

 

  ------------------------------------
  ` LIBS += -L/usr/local/lib -lglut`
  ------------------------------------

 

Note that the shown code will not give a correctly-running program,
because it is too incomplete.

 

 

 

 

 

 

