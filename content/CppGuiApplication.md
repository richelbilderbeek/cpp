



 

 

 

 

 

([C++](Cpp.md)) [GUI application](CppGuiApplication.md)
=========================================================

 

A [GUI application](CppGuiApplication.md) is an
[application](CppApplication.md) that uses a [GUI](CppGui.md)
('Graphical User Interface'). In other words: it is an
[application](CppApplication.md) that uses windows/dialogs with visual
elements on which the user can click or navigate to with the keyboard.
Most [games](Games.md) are [GUI applications](CppGuiApplication.md),
with the exception for text-adventures.

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.md) users
-----------------------------------------------------------------------------

 

In [Qt Creator](CppQtCreator.md), a [GUI
application](CppGuiApplication.md) is a [Qt Creator project
type](CppQtProjectType.md) with the following line:

 

  --------------
  ` QT += gui`
  --------------

 

Note that this does not indicate that the program uses a
[GUI](CppGui.md): it might just use non-visual [Qt](CppQt.md)
[classes](CppClass.md)[](), making the program appear as a [console
application](CppConsoleApplication.md).

 

 

 

 

 

Example [Qt Creator GUI application](CppGuiApplication.md) [project file](CppQtProjectFile.md)
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-14T13:37:45 # #------------------------------------------------- QT       += core gui TARGET = CppGuiApplication TEMPLATE = app SOURCES += main.cpp\         mainwindow.cpp HEADERS  += mainwindow.h FORMS    += mainwindow.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



