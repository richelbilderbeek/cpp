



 

 

 

 

 

([C++](Cpp.htm)) [HelloWorldQtCreatorLubuntuToWindows](CppHelloWorldQtCreatorLubuntuToWindows.htm)
==================================================================================================

 

![C++98](PicCpp98.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)

 

['Hello World' using Qt Creator under Lubuntu, crosscompile to
Windows](CppHelloWorldQtCreatorLubuntuToWindows.htm) is a [Hello
World](CppHelloWorld.htm) program using the [Qt
Creator](CppQtCreator.htm) [IDE](CppIde.htm) under the
[Lubuntu](CppLubuntu.htm) [operating system](CppOs.htm), [cross
compiled](CppCrossCompile.htm) using [MXE](CppMxe.htm).

 

-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorLubuntuToWindows' (zip)](CppHelloWorldQtCreatorLubuntuToWindows.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloWorldQtCreatorLubuntuToWindows/CppHelloWorldQtCreatorLubuntuToWindows.pro
----------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorLubuntuToWindows/main.cpp
-------------------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorLubuntuToWindows/CppHelloWorldQtCreatorLubuntuToWindows.sh
----------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="../../Libraries/mxe/usr/i686-pc-mingw32/qt5/bin/qmake" mytarget="CppHelloWorldQtCreatorLubuntuToWindows" myprofile=$mytarget.pro   if [ ! -e $myprofile ] then   echo "Qt Creator project '$myprofile' not found"   exit fi  $myfile $myprofile  if [ ! -e Makefile ] then   echo "FAIL: $myfile $myprofile"   exit fi  make  if [ -e ./release/$mytarget".exe" ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL" fi echo "2/2: making makefile" make  #Cleaning up rm Makefile rm Makefile.* rm -r release rm -r debug`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
