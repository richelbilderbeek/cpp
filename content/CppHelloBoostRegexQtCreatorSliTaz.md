



 

 

 

 

 

([C++](Cpp.htm)) [HelloBoostRegexQtCreatorSliTaz](CppHelloBoostRegexQtCreatorSliTaz.htm)
========================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![SliTaz](PicSliTaz.png)

 

[Hello Boost.Regex using Qt Creator under
SliTaz](CppHelloBoostRegexQtCreatorSliTaz.htm) is a [Hello
Boost.Regex](CppHelloBoostRegex.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloBoostRegexQtCreatorSliTaz' (zip)](CppHelloBoostRegexQtCreatorSliTaz.zip)

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

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.55
-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloBoostRegexQtCreatorSliTaz/CppHelloBoostRegexQtCreatorSliTaz.pro
------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  LIBS += \   -lboost_date_time \   -lboost_filesystem \   -lboost_program_options \   -lboost_regex \   -lboost_signals \   -lboost_system`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQtCreatorSliTaz/main.cpp
--------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/regex.hpp>  int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQtCreatorSliTaz/CppHelloBoostRegexQtCreatorSliTaz.sh
------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="qmake" mytarget="CppHelloBoostRegexQtCreatorSliTaz" myprofile=$mytarget.pro   if [ -e $myfile ] then   echo "Compiler '$myfile' found" else   echo "Compiler '$myfile' not found directly"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating makefile"  $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myfile $myprofile"   exit fi  echo "2/2: making makefile"  make  if [ -e $mytarget ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm *.o rm Makefile rm $mytarget`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
