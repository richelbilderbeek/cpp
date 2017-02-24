

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GUI application](CppGuiApplication.htm)
=========================================================

 

A [GUI application](CppGuiApplication.htm) is an
[application](CppApplication.htm) that uses a [GUI](CppGui.htm)
('Graphical User Interface'). In other words: it is an
[application](CppApplication.htm) that uses windows/dialogs with visual
elements on which the user can click or navigate to with the keyboard.
Most [games](Games.htm) are [GUI applications](CppGuiApplication.htm),
with the exception for text-adventures.

 

 

 

 

 

![Qt Creator](PicQtCreator.png) Note for [Qt Creator](CppQtCreator.htm) users
-----------------------------------------------------------------------------

 

In [Qt Creator](CppQtCreator.htm), a [GUI
application](CppGuiApplication.htm) is a [Qt Creator project
type](CppQtProjectType.htm) with the following line:

 

  --------------
  ` QT += gui`
  --------------

 

Note that this does not indicate that the program uses a
[GUI](CppGui.htm): it might just use non-visual [Qt](CppQt.htm)
[classes](CppClass.htm)[](), making the program appear as a [console
application](CppConsoleApplication.htm).

 

 

 

 

 

Example [Qt Creator GUI application](CppGuiApplication.htm) [project file](CppQtProjectFile.htm)
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-14T13:37:45 # #------------------------------------------------- QT       += core gui TARGET = CppGuiApplication TEMPLATE = app SOURCES += main.cpp\         mainwindow.cpp HEADERS  += mainwindow.h FORMS    += mainwindow.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
