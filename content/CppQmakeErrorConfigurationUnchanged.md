
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [Configuration unchanged, skipping QMake step](CppQmakeErrorConfigurationUnchanged.md)
=========================================================================================================================

 

[make error](CppMakeError.md).

 

 

 

 

 

Full error message
------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Running build steps for project MyProject... Configuration unchanged, skipping QMake step. Starting: /usr/bin/make -w  make: Entering directory '/MyProjectFolder' make: Nothing to be done for 'first'. make: Leaving directory '/MyProjectFolder' Exited with code 0.`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 1.2.1

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

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

 

This [qmake error](CppQmakeError.md) might not be an error.
[Configuration unchanged, skipping QMake
step](CppQmakeErrorConfigurationUnchanged.md) denotes that the makefile
needs not to be recreated, because nothing in its configuration has
changed.

 

After removing the makefile the following compile output (re)appears:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Running build steps for project MyProject... Starting: /usr/bin/qmake-qt4 /MyProject.pro -spec /usr/share/qt4/mkspecs/linux-g++ -r CONFIG+=debug  Exited with code 0. Starting: /usr/bin/make -w  make: Entering directory '/MyProjectFolder' g++ -c -pipe -g -Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -o main.o main.cpp g++ -o MyProject main.o -L/usr/lib -lQtGui -lQtCore -lpthread make: Leaving directory '/MyProjectFolder' Exited with code 0.`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

