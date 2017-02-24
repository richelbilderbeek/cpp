



 

 

 

 

 

([C++](Cpp.htm)) [HelloWorld64QtCreatorLubuntu](CppHelloWorld64QtCreatorLubuntu.htm)
====================================================================================

 

[Hello World (64-bit) using Qt Creator under
Lubuntu](CppHelloWorl64QtCreatorLubuntu.htm) is a [Hello World
(64-bit)](CppHelloWorld64.htm) program using the [Qt
Creator](CppQtCreator.htm) [IDE](CppIde.htm) under the
[Lubuntu](CppLubuntu.htm) [operating system](CppOs.htm).

-   [Download the Qt Creator project
    'CppHelloWorl64QtCreatorLubuntu' (zip)](CppHelloWorld64QtCreatorLubuntu.zip)

 

Compiling the code results in the following error:

 

  -----------------------------------------------------------------------------------------
  ` /usr/include/c++/4.5/iostream:39: error: bits/c++config.h: No such file or directory`
  -----------------------------------------------------------------------------------------

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloWorld64QtCreatorLubuntu/CppHelloWorld64QtCreatorLubuntu.pro
--------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui QMAKE_CXXFLAGS += -m64 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorld64QtCreatorLubuntu/main.cpp
------------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorld64QtCreatorLubuntu/CppHelloWorld64QtCreatorLubuntu.sh
--------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash mymake="make" myqmake="qmake" mytarget="CppHelloWorld64QtCreatorLubuntu" myprofile=$mytarget.pro  if [ ! -e $myprofile ] then   echo "Qt Creator project '$myprofile' not found"   exit fi  $myqmake $myprofile  if [ ! -e Makefile ] then   echo $mytarget": FAIL"     exit fi  $mymake  if [ -e $mytarget ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL" fi  #Cleaning up rm *.o rm Makefile rm $mytarget`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
