[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [HelloWorldQtCreatorLubuntu](CppHelloWorldQtCreatorLubuntu.htm)
================================================================================

 

[Hello World using Qt Creator under
Lubuntu](CppHelloWorldQtCreatorLubuntu.htm) is [Hello
World](CppHelloWorld.htm) program using the [Qt
Creator](CppQtCreator.htm) [IDE](CppIde.htm) under
[Lubuntu](CppLubuntu.htm).

 

-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorLubuntu' (zip)](CppHelloWorldQtCreatorLubuntu.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloWorldQtCreatorLubuntu/CppHelloWorldQtCreatorLubuntu.pro
----------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorLubuntu/main.cpp
----------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorLubuntu/CppHelloWorldQtCreatorLubuntu.sh
----------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash mymake="make" myqmake="qmake" mytarget="CppHelloWorldQtCreatorLubuntu" myprofile=$mytarget.pro  if [ ! -e $myprofile ] then   echo "Qt Creator project '$myprofile' not found"   exit fi  $myqmake $myprofile  if [ ! -e Makefile ] then   echo $mytarget": FAIL"     exit fi  $mymake  if [ -e $mytarget ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL" fi  #Cleaning up rm *.o rm Makefile rm $mytarget`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
