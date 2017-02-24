
 

 

 

 

 

([C++](Cpp.md)) [undefined reference to 'TTF\_Init'](CppLinkErrorUndefinedReferenceToTTF_Init.md)
===================================================================================================

 

[Link error](CppLinkError.md).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------
  ` /MyFolder/main.cpp:7: error: undefined reference to 'TTF_Init'`
  -------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

 

The following source code was used:

 

  ---------------------------------
  ` [source cannot be disclosed]`
  ---------------------------------

 

The following [project file](CppQtProjectFile.md) was used:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-17T19:38:58 # #------------------------------------------------- QT       += core gui TARGET = MyTarget TEMPLATE = app LIBS += -L/usr/local/lib -lSDL \ SOURCES += \     main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.md) against the [SDL](CppSdl.md) true-type
fonts [library](CppLibrary.md). Add the following line to your [project
file](CppQtProjectFile.md):

 

  ---------------------------------------
  ` LIBS += -L/usr/local/lib -lSDL_ttf`
  ---------------------------------------

 

 

 

 

 

 

