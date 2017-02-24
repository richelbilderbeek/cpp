



 

 

 

 

 

([C++](Cpp.htm)) [HelloWorldQtCreatorCygwin](CppHelloWorldQtCreatorCygwin.htm)
==============================================================================

 

[Hello World using Qt Creator under
Cygwin](CppHelloWorldQtCreatorCygwin.htm) is [Hello
World](CppHelloWorld.htm) program using the [Qt
Creator](CppQtCreator.htm) [IDE](CppIde.htm) under
[Cygwin](CppCygwin.htm).

 

-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorCygwin' (zip)](CppHelloWorldQtCreatorCygwin.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloWorldQtCreatorCygwin/CppHelloWorldQtCreatorCygwin.pro
--------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorCygwin/main.cpp
---------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorCygwin/CppHelloWorldQtCreatorCygwin.sh
--------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash mymake="make.exe" myqmake="/usr/lib/qt4/bin/qmake.exe" mytarget="CppHelloWorldQtCreatorCygwin" myprofile=$mytarget.pro myexe=$mytarget.exe   if [ -e $myqmake ] then   echo "Compiler '$myqmake' found" else   echo "Compiler '$myqmake' not found directly"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myqmake $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myqmake $myprofile"   exit fi  if [ -e $mymake ] then   echo "Compiler '$mymake' found" else   echo "Compiler '$mymake' not found directly"   #exit fi  echo "2/2: making makefile"  $mymake  echo $myexe  if [ -e $myexe ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm *.o rm $myexe rm Makefile`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
