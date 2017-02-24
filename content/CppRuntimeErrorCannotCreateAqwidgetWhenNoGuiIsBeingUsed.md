

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Cannot create a QWidget when no GUI is being used](CppRuntimeErrorCannotCreateAqwidgetWhenNoGuiIsBeingUsed.htm)
=================================================================================================================================

 

[Runtime error](CppRuntimeError.htm).

 

 

 

 

 

Full error message
------------------

 

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Starting /MyFolder/mymain.cpp... QWidget: Cannot create a QWidget when no GUI is being used The program has unexpectedly finished. /MyFolder/mymain exited with code 0`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm): [GUI](CppGui.htm) Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
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

 

Do not use [QCoreApplication](CppQCoreApplication.htm), but use
[QApplication](CppQApplication.htm) instead.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <QApplication> #include <QDialog>  int main(int argc, char *argv[]) {   QApplication a(argc, argv);   QDialog d;   d.show();   return a.exec(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
