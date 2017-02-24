



 

 

 

 

 

([C++](Cpp.md)) [Cannot create a QWidget when no GUI is being used](CppRuntimeErrorCannotCreateAqwidgetWhenNoGuiIsBeingUsed.md)
=================================================================================================================================

 

[Runtime error](CppRuntimeError.md).

 

 

 

 

 

Full error message
------------------

 

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Starting /MyFolder/mymain.cpp... QWidget: Cannot create a QWidget when no GUI is being used The program has unexpectedly finished. /MyFolder/mymain exited with code 0`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): [GUI](CppGui.md) Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Qt](CppQt.md): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-07-24T12:32:57 # #------------------------------------------------- QT       += core gui TARGET = CppRuntimeErrorCannotCreateAqwidgetWhenNoGuiIsBeingUsed TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Source code
-----------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QtCore/QCoreApplication> #include <QDialog>  int main(int argc, char *argv[]) {   QCoreApplication a(argc, argv);   QDialog d;   d.show();   return a.exec(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppRuntimeErrorCannotCreateAqwidgetWhenNoGuiIsBeingUsed' (zip)](CppRuntimeErrorCannotCreateAqwidgetWhenNoGuiIsBeingUsed.zip)

 

 

 

 

 

Solution
--------

 

Do not use [QCoreApplication](CppQCoreApplication.md), but use
[QApplication](CppQApplication.md) instead.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QDialog d;   d.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



