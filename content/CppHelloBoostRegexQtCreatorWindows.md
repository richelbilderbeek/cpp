



 

 

 

 

 

([C++](Cpp.htm)) [HelloBoostRegexQtCreatorWindows](CppHelloBoostRegexQtCreatorWindows.htm)
==========================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Hello Boost.Regex using Qt Creator under
Windows](CppHelloBoostRegexQtCreatorWindows.htm) is a [Hello
Boost.Regex](CppHelloBoostRegex.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloBoostRegexQtCreatorWindows' (zip)](CppHelloBoostRegexQtCreatorWindows.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloBoostRegexQtCreatorWindows/CppHelloBoostRegexQtCreatorWindows.pro
--------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  message(Windows dynamic link to Boost)  INCLUDEPATH += \   ../../Libraries/boost_1_54_0  debug {   LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_filesystem-mgw48-mt-d-1_54.a   LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_regex-mgw48-mt-d-1_54.a   LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_system-mgw48-mt-d-1_54.a }  release {   LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_filesystem-mgw48-mt-1_54.a   LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_regex-mgw48-mt-1_54.a   LIBS += ../../Libraries/boost_1_54_0/stage/lib/libboost_system-mgw48-mt-1_54.a }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQtCreatorWindows/main.cpp
---------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/regex.hpp>  int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQtCreatorWindows/CppHelloBoostRegexQtCreatorWindows.sh
--------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash mymake="e:/Qt/Qt5.1.0/Tools/mingw48_32/bin/mingw32-make.exe" myqmake="e:/Qt/Qt5.1.0/5.1.0/mingw48_32/bin/qmake.exe" mytarget="CppHelloBoostRegexQtCreatorWindows" myprofile=$mytarget.pro myexe=release/$mytarget.exe   if [ -e $myqmake ] then   echo "Compiler '$myqmake' found" else   echo "Compiler '$myqmake' not found directly"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating makefile"  $myqmake $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myqmake $myprofile"   exit fi  if [ -e $mymake ] then   echo "Compiler '$mymake' found" else   echo "Compiler '$mymake' not found directly"   #exit fi  echo "2/2: Making makefile"  $mymake  echo $myexe  if [ -e $myexe ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm Makefile rm Makefile.* rm -r release rm -r debug`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
