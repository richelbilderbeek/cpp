
 

 

 

 

 

([C++](Cpp.md)) [QmakeErrorUnknownModulesInQtLocationSensors](CppQmakeErrorUnknownModulesInQtLocationSensors.md)
==================================================================================================================

 

![Qt](PicQt.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Unknown module(s) in QT: location
sensors](CppQmakeErrorUnknownModulesInQtLocationSensors.md) is a [qmake
error](CppQmakeError.md).

 

  ------------------------------------------------------------
  ` # :-1: error: Unknown module(s) in QT: location sensors`
  ------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppQmakeErrorUnknownModulesInQtLocationSensors' (zip)](CppQmakeErrorUnknownModulesInQtLocationSensors.md)

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQmakeErrorUnknownModulesInQtLocationSensors/CppQmakeErrorUnknownModulesInQtLocationSensors.pro
--------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT += core gui  #To show I compile with Qt5 greaterThan(QT_MAJOR_VERSION, 4) {   #Add webkitwidgets give the following error under Lubuntu   # :-1: error: Unknown module(s) in QT: location sensors   #Under native Windows, however, this works fine   QT += widgets webkitwidgets #Gives error under Lubuntu  }   # Solution provided by Xiao: #   sudo apt-get install aptitude #   sudo aptitude search sensors5|grep dev #   sudo apt-get install qtsensors5-dev #   sudo apt-get install qtsensors5-private-dev #   sudo aptitude search location5|grep dev #   sudo apt-get install qtlocation5-dev #   sudo apt-get install qtlocation5-private-de  SOURCES += \     main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQmakeErrorUnknownModulesInQtLocationSensors/main.cpp
---------------------------------------------------------

 

  ------------------
  ` int main() {}`
  ------------------

 

 

 

 

 

 

