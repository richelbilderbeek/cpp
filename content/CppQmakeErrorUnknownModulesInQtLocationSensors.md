



 

 

 

 

 

([C++](Cpp.htm)) [QmakeErrorUnknownModulesInQtLocationSensors](CppQmakeErrorUnknownModulesInQtLocationSensors.htm)
==================================================================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Unknown module(s) in QT: location
sensors](CppQmakeErrorUnknownModulesInQtLocationSensors.htm) is a [qmake
error](CppQmakeError.htm).

 

  ------------------------------------------------------------
  ` # :-1: error: Unknown module(s) in QT: location sensors`
  ------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppQmakeErrorUnknownModulesInQtLocationSensors' (zip)](CppQmakeErrorUnknownModulesInQtLocationSensors.htm)

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppQmakeErrorUnknownModulesInQtLocationSensors/CppQmakeErrorUnknownModulesInQtLocationSensors.pro
--------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT += core gui  #To show I compile with Qt5 greaterThan(QT_MAJOR_VERSION, 4) {   #Add webkitwidgets give the following error under Lubuntu   # :-1: error: Unknown module(s) in QT: location sensors   #Under native Windows, however, this works fine   QT += widgets webkitwidgets #Gives error under Lubuntu  }   # Solution provided by Xiao: #   sudo apt-get install aptitude #   sudo aptitude search sensors5|grep dev #   sudo apt-get install qtsensors5-dev #   sudo apt-get install qtsensors5-private-dev #   sudo aptitude search location5|grep dev #   sudo apt-get install qtlocation5-dev #   sudo apt-get install qtlocation5-private-de  SOURCES += \     main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQmakeErrorUnknownModulesInQtLocationSensors/main.cpp
---------------------------------------------------------

 

  ------------------
  ` int main() {}`
  ------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
