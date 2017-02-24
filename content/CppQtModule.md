



 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [Modules](CppQtModule.md)
============================================================

 

When setting up a Qt project, you need to select required
[modules](CppQtModule.md) in the [select required modules
dialog](CppQtCreatorSelectRequiredModules.png).

 

The modules supplied with [Qt Creator](CppQtCreator.md) 1.3.1 are:

1.  QtCore
2.  QtGui
3.  QtNetwork
4.  QtOpenFL
5.  QtSql
6.  QtScript
7.  QtScriptTools
8.  [QtSvg](CppQtSvg.md)
9.  QtWebKit
10. QtXml
11. QtXmlPatterns
12. [Phonon](CppPhonon.md)
13. QtMultimedia
14. Qt3Support
15. QtTest
16. QtDBus

 

Which [modules](CppQtModule.md) were selected is stored in the project
file with the QT parameter. Below some project files are shown with
different module combinations.

 

 

 

 

 

Project file of a Qt4 console application with no [modules](CppQtModule.md) selected
-------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-01T10:23:29 # #------------------------------------------------- QT       -= core gui TARGET = MyProjectName CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that the [modules](CppQtModule.md) QtCore and QtGui need to be
removed explicitly.

 

 

 

 

 

Project file of a Qt4 console application with only the QtCore [module](CppQtModule.md) selected
-------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-01T10:26:31 # #------------------------------------------------- QT       -= gui TARGET = MyProjectName CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that the [module](CppQtModule.md) QtGui need to be removed
explicitly.

 

 

 

 

 

Project file of a Qt4 console application with only QtCore and QtGui [modules](CppQtModule.md) selected
--------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-01T10:27:59 # #------------------------------------------------- TARGET = MyProjectName CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that no [module](CppQtModule.md) need to be added explicitly.

 

 

 

 

 

Project file of a Qt4 console application with all [modules](CppQtModule.md) selected
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-05-01T10:14:58 # #------------------------------------------------- QT       += network opengl sql script scripttools svg webkit xml xmlpatterns phonon multimedia qt3support testlib dbus TARGET = MyProjectName CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that the [modules](CppQtModule.md) QtCore and QtGui need not to be
added explicitly.

 

 

 

 

 





 



