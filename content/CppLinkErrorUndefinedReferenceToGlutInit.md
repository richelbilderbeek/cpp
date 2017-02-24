



 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'glutInit'](CppLinkErrorUndefinedReferenceToGlutInit.htm)
==================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` /MyFolder/main.o:: In function 'main': /MyFolder/main.cpp:7: error: undefined reference to 'glutInit' :: error: collect2: ld returned 1 exit status`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

 

The following source code was used:

 

  ----------------------------------------------------------
  ` #include <GL/glut.h>  int main() {   glutInit(0,0); }`
  ----------------------------------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-13T09:39:02 # #------------------------------------------------- QT       += core QT       -= gui TARGET = MyTarget CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the GLUT
[library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  ------------------------------------
  ` LIBS += -L/usr/local/lib -lglut`
  ------------------------------------

 

Note that the shown code will not give a correctly-running program,
because it is too incomplete.

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
