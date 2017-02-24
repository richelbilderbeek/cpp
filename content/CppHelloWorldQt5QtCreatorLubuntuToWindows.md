
 

 

 

 

 

([C++](Cpp.md)) [HelloWorldQt5QtCreatorLubuntuToWindows](CppHelloWorldQt5QtCreatorLubuntuToWindows.md)
========================================================================================================

 

![C++98](PicCpp98.png)![Qt5](PicQt5.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png)

 

[Hello World using Qt5 under Qt Creator under Lubuntu, crosscompiled to
Windows](CppHelloWorldQt5QtCreatorLubuntuToWindows.md) is a [Hello
World](CppHelloWorld.md) program.

 

-   [Download the Qt Creator project
    'CppHelloWorldQt5QtCreatorLubuntuToWindows' (zip)](CppHelloWorldQt5QtCreatorLubuntuToWindows.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloWorldQt5QtCreatorLubuntuToWindows/CppHelloWorldQt5QtCreatorLubuntuToWindows.pro
----------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQt5QtCreatorLubuntuToWindows/main.cpp
----------------------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQt5QtCreatorLubuntuToWindows/CppHelloWorldQt5QtCreatorLubuntuToWindows.sh
----------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="../../Libraries/mxe/usr/i686-pc-mingw32/qt5/bin/qmake" mytarget="CppHelloWorldQt5QtCreatorLubuntuToWindows" myprofile=$mytarget.pro myexe=$mytarget".exe"  if [ ! -e $myprofile ] then   echo "FAIL: Qt Creator project '$myprofile' not found"   exit fi  $myfile $myprofile  if [ ! -e Makefile ] then   echo "FAIL: "$myfile" "$myprofile" (makefile not found)"   exit fi  make  if [ -e ./release/$myexe ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL (executable not found)" fi  #Cleaning up #rm *.o #rm Makefile #rm Makefile.* #rm -r release #rm -r debug`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
