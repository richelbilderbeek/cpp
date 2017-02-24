
 

 

 

 

 

([C++](Cpp.md)) [HelloWorld64QtCreatorLubuntu](CppHelloWorld64QtCreatorLubuntu.md)
====================================================================================

 

[Hello World (64-bit) using Qt Creator under
Lubuntu](CppHelloWorl64QtCreatorLubuntu.md) is a [Hello World
(64-bit)](CppHelloWorld64.md) program using the [Qt
Creator](CppQtCreator.md) [IDE](CppIde.md) under the
[Lubuntu](CppLubuntu.md) [operating system](CppOs.md).

-   [Download the Qt Creator project
    'CppHelloWorl64QtCreatorLubuntu' (zip)](CppHelloWorld64QtCreatorLubuntu.zip)

 

Compiling the code results in the following error:

 

  -----------------------------------------------------------------------------------------
  ` /usr/include/c++/4.5/iostream:39: error: bits/c++config.h: No such file or directory`
  -----------------------------------------------------------------------------------------

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloWorld64QtCreatorLubuntu/CppHelloWorld64QtCreatorLubuntu.pro
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

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
