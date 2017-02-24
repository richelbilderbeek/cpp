[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![to](PicTo.png)![Windows](PicWindows.png) ['Hello Boost' using Qt Creator under Lubuntu, crosscompile to Windows](CppHelloBoostQtCreatorLubuntuToWindows.htm)
===============================================================================================================================================================================================================================

 

[Hello Boost](CppHelloBoost.htm) is an extension of [Hello
World](CppHelloWorld.htm). Like [Hello World](CppHelloWorld.htm), [Hello
Boost](CppHelloBoost.htm) is a simple console application. [Hello
Boost](CppHelloBoost.htm), however, also requires the
[Boost](CppBoost.htm) [library](CppLibrary.htm) and to
[link](CppLink.htm) against the [Boost.Regex](CppRegex.htm)
[library](CppLibrary.htm).

 

-   [Download the Qt Creator project
    'CppHelloBoostQtCreatorLubuntuToWindows' (including
    bash script)(zip)](CppHelloBoostQtCreatorLubuntuToWindows.zip)

 

Next to the Qt Creator project, there is included:

-   CppHelloBoostQtCreatorLubuntuToWindows.sh: a bash script that tests
    if Boost installed correctly

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppHelloBoostQtCreatorLubuntuToWindows.pro
-----------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp INCLUDEPATH += ../../Libraries/mxe/usr/i686-pc-mingw32/boost LIBS += -L../..//Libraries/mxe/usr/i686-pc-mingw32/lib -lboost_regex`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/regex.hpp>   int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

CppHelloBoostQtCreatorLubuntuToWindows.sh
-----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash #From http://richelbilderbeek.nl/CppHelloBoostQtCreatorLubuntuToWindows.htm echo "Cross compiling to Windows"  myfile="i686-pc-mingw32-qmake" #myfile="../../Libraries/mxe/usr/bin/i686-pc-mingw32-qmake" mytarget="CppHelloBoostQtCreatorLubuntuToWindows" myprofile=$mytarget.pro   if [ -e $myfile ] then   echo "MXE crosscompiler '$myfile' found" else   echo "MXE crosscompiler '$myfile' not found directly, but perhaps it is in the PATH"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: qmake CppHelloBoostQtCreatorLubuntu.pro"   exit fi  echo "2/2: making makefile"  make  if [ -e /release/$target.exe ] then   echo "SUCCES" else   echo "FAIL" fi  #Cleaning up #rm ui_*.* #rm Makefile #rm Makefile.* #rm $target`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
