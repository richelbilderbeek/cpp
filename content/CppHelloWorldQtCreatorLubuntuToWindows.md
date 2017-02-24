



 

 

 

 

 

([C++](Cpp.md)) [HelloWorldQtCreatorLubuntuToWindows](CppHelloWorldQtCreatorLubuntuToWindows.md)
==================================================================================================

 

![C++98](PicCpp98.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png)

 

['Hello World' using Qt Creator under Lubuntu, crosscompile to
Windows](CppHelloWorldQtCreatorLubuntuToWindows.md) is a [Hello
World](CppHelloWorld.md) program using the [Qt
Creator](CppQtCreator.md) [IDE](CppIde.md) under the
[Lubuntu](CppLubuntu.md) [operating system](CppOs.md), [cross
compiled](CppCrossCompile.md) using [MXE](CppMxe.md).

 

-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorLubuntuToWindows' (zip)](CppHelloWorldQtCreatorLubuntuToWindows.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloWorldQtCreatorLubuntuToWindows/CppHelloWorldQtCreatorLubuntuToWindows.pro
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

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
