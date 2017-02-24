



 

 

 

 

 

([C++](Cpp.htm)) [Nothing to be done for 'first'](CppMakeErrorNothingToBeDoneForFirst.htm)
==========================================================================================

 

[make error](CppMakeError.htm).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Running build steps for project MyProject... Configuration unchanged, skipping QMake step. Starting: /usr/bin/make -w  make: Entering directory '/MyProjectFolder' make: Nothing to be done for 'first'. make: Leaving directory '/MyProjectFolder' Exited with code 0.`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 1.2.1

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

Project type: Qt4 Console Application

 

### MyProject.pro code:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-04-24T14:22:38 # #------------------------------------------------- TARGET = MyProject CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

### main.cpp code:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtCore/QCoreApplication> #include <QGraphicsScene> #include <QGraphicsView>  int main() {   QGraphicsScene scene;   scene.addText("Hello, world!");    QGraphicsView view(&scene);   while (1)    {     view.show();   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

### Application output

 

  -------------------------------------------------------------------
  ` Starting /MyProject...  The program has unexpectedly finished.`
  -------------------------------------------------------------------

 

The project had already run once.

 

 

 

 

 

Solution
--------

 

This [make error](CppMakeError.htm) might not be an error. [Nothing to
be done for 'first'](CppMakeErrorNothingToBeDoneForFirst.htm) denotes
that the file main.cpp needs not to be recompiled to main.o, because the
source code of main.cpp has not changed. This saves the programmer
needless compiling time.

 

After removing the file main.o the following compile output (re)appears:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Running build steps for project MyProject... Configuration unchanged, skipping QMake step. Starting: /usr/bin/make -w  make: Entering directory '/MyProjectFolder' g++ -c -pipe -g -Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -o main.o main.cpp g++ -o MyProject main.o -L/usr/lib -lQtGui -lQtCore -lpthread make: Leaving directory '/MyProjectFolder' Exited with code 0.`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



