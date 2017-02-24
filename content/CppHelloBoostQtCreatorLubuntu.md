



 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png) ['Hello Boost' using Qt Creator under Lubuntu](CppHelloBoostQtCreatorLubuntu.md)
===================================================================================================================================================

 

[Hello Boost](CppHelloBoost.md) is an extension of [Hello
World](CppHelloWorld.md). Like [Hello World](CppHelloWorld.md), [Hello
Boost](CppHelloBoost.md) is a simple console application. [Hello
Boost](CppHelloBoost.md), however, also requires the
[Boost](CppBoost.md) [library](CppLibrary.md) and to
[link](CppLink.md) against the [Boost.Regex](CppRegex.md)
[library](CppLibrary.md).

 

-   [Download the Qt Creator project 'CppHelloBoostQtCreatorLubuntu'
    (including Makefile and
    bash script)(zip)](CppHelloBoostQtCreatorLubuntu.zip)

 

Next to the Qt Creator project, there is included:

-   Makefile: the makefile created by qmake
-   test.sh: a bash script that tests if Boost installed correctly

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.49
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 4.8.4 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppHelloBoostQtCreatorLubuntu.pro
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

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
