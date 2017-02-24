



 

 

 

 

 

([C++](Cpp.htm)) [HelloCpp11QtCreatorSliTaz](CppHelloCpp11QtCreatorSliTaz.htm)
==============================================================================

 

![C++11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![SliTaz](PicSliTaz.png)

 

[Hello C++11 using Qt Creator under
SliTaz](CppHelloCpp11QtCreatorSliTaz.htm) is a [Hello
C++11](CppHelloCpp11.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloCpp11QtCreatorSliTaz' (zip)](CppHelloCpp11QtCreatorSliTaz.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloCpp11QtCreatorSliTaz/CppHelloCpp11QtCreatorSliTaz.pro
--------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++11 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp11QtCreatorSliTaz/main.cpp
---------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const auto s = "Hello C++11";   std::cout << s << '\n'; }`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp11QtCreatorSliTaz/CppHelloCpp11QtCreatorSliTaz.sh
--------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="qmake" mytarget="CppHelloCpp11QtCreatorSliTaz" myprofile=$mytarget.pro   if [ -e $myfile ] then   echo "Compiler '$myfile' found" else   echo "Compiler '$myfile' not found directly"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myfile $myprofile"   exit fi  echo "2/2: making makefile"  make  if [ -e $mytarget ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm *.o rm Makefile rm $mytarget`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
