



 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png) ['Hello Boost' using Qt Creator under Lubuntu](CppHelloBoostQtCreatorLubuntu.htm)
===================================================================================================================================================

 

[Hello Boost](CppHelloBoost.htm) is an extension of [Hello
World](CppHelloWorld.htm). Like [Hello World](CppHelloWorld.htm), [Hello
Boost](CppHelloBoost.htm) is a simple console application. [Hello
Boost](CppHelloBoost.htm), however, also requires the
[Boost](CppBoost.htm) [library](CppLibrary.htm) and to
[link](CppLink.htm) against the [Boost.Regex](CppRegex.htm)
[library](CppLibrary.htm).

 

-   [Download the Qt Creator project 'CppHelloBoostQtCreatorLubuntu'
    (including Makefile and
    bash script)(zip)](CppHelloBoostQtCreatorLubuntu.zip)

 

Next to the Qt Creator project, there is included:

-   Makefile: the makefile created by qmake
-   test.sh: a bash script that tests if Boost installed correctly

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.49
-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppHelloBoostQtCreatorLubuntu.pro
--------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  LIBS += \   -lboost_date_time \   -lboost_filesystem \   -lboost_program_options \   -lboost_regex \   -lboost_signals \   -lboost_system`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/regex.hpp>  int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

test.sh
-------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash target="CppHelloBoostQtCreatorLubuntu"  if [ -e Makefile ] then   cp Makefile Makefile.prev   echo "Makefile copied to Makefile.prev"   rm Makefile   echo "Removed Makefile" fi  qmake $target.pro  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: qmake CppHelloBoostQtCreatorLubuntu.pro"   exit fi  make  if [ -e $target ] then   echo "SUCCES" else   echo "FAIL" fi  #Cleaning up rm *.o rm Makefile rm $target`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
