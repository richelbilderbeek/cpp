
 

 

 

 

 

([C++](Cpp.md)) ![Qt](PicQt.png) [Qt Creator project type](CppQtProjectType.md)
=================================================================================

 

The [Qt Creator project type](CppQtProjectType.md) is the type of [Qt
Creator](CppQtCreator.md) [project](CppQtProject.md).

 

There are multiple [project types](CppQtProjectType.md) for [desktop
applications](CppDesktopApplication.md):

 

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md): a [desktop
    applications](CppDesktopApplication.md) that must be called from
    the command line and/or display plain text only
-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md): a
    [desktop applications](CppDesktopApplication.md) that displays not
    just plain text, but, for example, images

 

 

 

 

 

Determining the [project type](CppQtProjectType.md)
----------------------------------------------------

 

There are multiple ways to determine the [project
type](CppQtProjectType.md):

-   select the project type
-   modify the [project file](CppQtProjectFile.md)

 

 

 

 

### Determining the [project type](CppQtProjectType.md): select the project type

 

When creating a new project, the [project type](CppQtProjectType.md)
can be selected in the 'New Project' screen:

-   [View the 'New Project' screen (Qt Creator
    version 1.2.1)](CppQtCreatorNewProject_1_2_1.png)
-   [View the 'New Project' screen (Qt Creator
    version 2.0.0)](CppQtCreatorNewProject_2_0_0.png)

 

Selecting a [project type](CppQtProjectType.md) only lets [Qt
Creator](CppQtCreator.md) help in writing a [project
file](CppQtProjectFile.md). This [project file](CppQtProjectFile.md)
can always be modified to change the [project
type](CppQtProjectType.md).

 

 

 

 

 

### Determining the [project type](CppQtProjectType.md): modify the [project file](CppQtProjectFile.md)

 

The [project file](CppQtProjectFile.md) determines the [project
type](CppQtProjectType.md).

 

The [project file](CppQtProjectFile.md) of a [console
application](CppConsoleApplication.md):

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-14T13:36:30 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppConsoleApplication CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The [project file](CppQtProjectFile.md) of a [GUI
application](CppGuiApplication.md):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-14T13:37:45 # #------------------------------------------------- QT       += core gui TARGET = CppGuiApplication TEMPLATE = app SOURCES += main.cpp\         mainwindow.cpp HEADERS  += mainwindow.h FORMS    += mainwindow.ui`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

