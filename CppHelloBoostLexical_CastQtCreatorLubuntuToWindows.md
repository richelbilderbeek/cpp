[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [HelloBoostLexical\_CastQtCreatorLubuntuToWindows](CppHelloBoostLexical_CastQtCreatorLubuntuToWindows.htm)
===========================================================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png)

 

[Hello Boost.Lexical\_cast using Qt Creator under Lubuntu, crosscompiled
to Windows](CppHelloBoostLexical_CastQtCreatorLubuntuToWindows.htm) is a
[Hello Boost.Lexical\_cast](CppHelloBoostLexical_Cast.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloBoostLexical\_CastQtCreatorLubuntuToWindows' (zip)](CppHelloBoostLexical_CastQtCreatorLubuntuToWindows.zip)

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

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloBoostLexical\_CastQtCreatorLubuntuToWindows/CppHelloBoostLexical\_CastQtCreatorLubuntuToWindows.pro
------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostLexical\_CastQtCreatorLubuntuToWindows/main.cpp
--------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/lexical_cast.hpp> #pragma GCC diagnostic pop  int main() {   const int x = 110;   const int y = 0;   const int z = 1;   const std::string s     = std::string("He")     + boost::lexical_cast<std::string>(x)     + std::string(" w")     + boost::lexical_cast<std::string>(y)     + std::string("r")     + boost::lexical_cast<std::string>(z)     + std::string("d");   std::cout << s << '\n'; }  /* Screen output:  He110 w0r1d  */`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostLexical\_CastQtCreatorLubuntuToWindows/CppHelloBoostLexical\_CastQtCreatorLubuntuToWindows.sh
------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="i686-pc-mingw32-qmake" mytarget="CppHelloBoostLexical_CastQtCreatorLubuntuToWindows" myprofile=$mytarget.pro   if [ -e $myfile ] then   echo "MXE crosscompiler '$myfile' found" else   echo "MXE crosscompiler '$myfile' not found directly, but perhaps it is in the PATH"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myfile $myprofile"   exit fi  echo "2/2: making makefile"  make  if [ -e ./release/$mytarget.exe ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm -r release rm -r debug rm Makefile rm Makefile.*`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
