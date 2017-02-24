

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [undefined reference to 'TTF\_Init'](CppLinkErrorUndefinedReferenceToTTF_Init.htm)
===================================================================================================

 

[Link error](CppLinkError.htm).

 

 

 

 

 

Full error message
------------------

 

  -------------------------------------------------------------------
  ` /MyFolder/main.cpp:7: error: undefined reference to 'TTF_Init'`
  -------------------------------------------------------------------

 

 

 

 

 

 

Cause
-----

 

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Selected required modules](CppQtCreatorSelectRequiredModules.png):
QtCore

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

 

The following source code was used:

 

  ---------------------------------
  ` [source cannot be disclosed]`
  ---------------------------------

 

The following [project file](CppQtProjectFile.htm) was used:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-17T19:38:58 # #------------------------------------------------- QT       += core gui TARGET = MyTarget TEMPLATE = app LIBS += -L/usr/local/lib -lSDL \ SOURCES += \     main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Solution
--------

 

You need to [link](CppLink.htm) against the [SDL](CppSdl.htm) true-type
fonts [library](CppLibrary.htm). Add the following line to your [project
file](CppQtProjectFile.htm):

 

  ---------------------------------------
  ` LIBS += -L/usr/local/lib -lSDL_ttf`
  ---------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
