

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Qt](PicQt.png) [Qt Creator project type](CppQtProjectType.htm)
=================================================================================

 

The [Qt Creator project type](CppQtProjectType.htm) is the type of [Qt
Creator](CppQtCreator.htm) [project](CppQtProject.htm).

 

There are multiple [project types](CppQtProjectType.htm) for [desktop
applications](CppDesktopApplication.htm):

 

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm): a [desktop
    applications](CppDesktopApplication.htm) that must be called from
    the command line and/or display plain text only
-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm): a
    [desktop applications](CppDesktopApplication.htm) that displays not
    just plain text, but, for example, images

 

 

 

 

 

Determining the [project type](CppQtProjectType.htm)
----------------------------------------------------

 

There are multiple ways to determine the [project
type](CppQtProjectType.htm):

-   select the project type
-   modify the [project file](CppQtProjectFile.htm)

 

 

 

 

### Determining the [project type](CppQtProjectType.htm): select the project type

 

When creating a new project, the [project type](CppQtProjectType.htm)
can be selected in the 'New Project' screen:

-   [View the 'New Project' screen (Qt Creator
    version 1.2.1)](CppQtCreatorNewProject_1_2_1.png)
-   [View the 'New Project' screen (Qt Creator
    version 2.0.0)](CppQtCreatorNewProject_2_0_0.png)

 

Selecting a [project type](CppQtProjectType.htm) only lets [Qt
Creator](CppQtCreator.htm) help in writing a [project
file](CppQtProjectFile.htm). This [project file](CppQtProjectFile.htm)
can always be modified to change the [project
type](CppQtProjectType.htm).

 

 

 

 

 

### Determining the [project type](CppQtProjectType.htm): modify the [project file](CppQtProjectFile.htm)

 

The [project file](CppQtProjectFile.htm) determines the [project
type](CppQtProjectType.htm).

 

The [project file](CppQtProjectFile.htm) of a [console
application](CppConsoleApplication.htm):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-14T13:36:30 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppConsoleApplication CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The [project file](CppQtProjectFile.htm) of a [GUI
application](CppGuiApplication.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-14T13:37:45 # #------------------------------------------------- QT       += core gui TARGET = CppGuiApplication TEMPLATE = app SOURCES += main.cpp\         mainwindow.cpp HEADERS  += mainwindow.h FORMS    += mainwindow.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
