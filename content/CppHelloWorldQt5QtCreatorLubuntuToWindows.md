



 

 

 

 

 

([C++](Cpp.htm)) [HelloWorldQt5QtCreatorLubuntuToWindows](CppHelloWorldQt5QtCreatorLubuntuToWindows.htm)
========================================================================================================

 

![C++98](PicCpp98.png)![Qt5](PicQt5.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png)

 

[Hello World using Qt5 under Qt Creator under Lubuntu, crosscompiled to
Windows](CppHelloWorldQt5QtCreatorLubuntuToWindows.htm) is a [Hello
World](CppHelloWorld.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloWorldQt5QtCreatorLubuntuToWindows' (zip)](CppHelloWorldQt5QtCreatorLubuntuToWindows.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloWorldQt5QtCreatorLubuntuToWindows/CppHelloWorldQt5QtCreatorLubuntuToWindows.pro
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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
