[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [HelloBoostLexical\_CastQt5QtCreatorLubuntuToWindows](CppHelloBoostLexical_CastQt5QtCreatorLubuntuToWindows.htm)
=================================================================================================================================

 

![Boost](PicBoost.png)![Qt5](PicQt5.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png)

 

[Hello Boost.Lexical\_cast using Qt5 under Qt Creator under Lubuntu,
crosscompiled to
Windows](CppHelloBoostLexical_CastQt5QtCreatorLubuntuToWindows.htm) is a
[Hello Boost.Lexical\_cast](CppHelloBoostLexical_Cast.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloBoostLexical\_CastQt5QtCreatorLubuntuToWindows' (zip)](CppHelloBoostLexical_CastQt5QtCreatorLubuntuToWindows.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloBoostLexical\_CastQt5QtCreatorLubuntuToWindows/CppHelloBoostLexical\_CastQt5QtCreatorLubuntuToWindows.pro
------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostLexical\_CastQt5QtCreatorLubuntuToWindows/main.cpp
-----------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/lexical_cast.hpp> #pragma GCC diagnostic pop  int main() {   const int x = 110;   const int y = 0;   const int z = 1;   const std::string s     = std::string("He")     + boost::lexical_cast<std::string>(x)     + std::string(" w")     + boost::lexical_cast<std::string>(y)     + std::string("r")     + boost::lexical_cast<std::string>(z)     + std::string("d");   std::cout << s << '\n'; }  /* Screen output:  He110 w0r1d  */`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostLexical\_CastQt5QtCreatorLubuntuToWindows/CppHelloBoostLexical\_CastQt5QtCreatorLubuntuToWindows.sh
------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="../../Libraries/mxe/usr/i686-pc-mingw32/qt5/bin/qmake" mytarget="CppHelloBoostLexical_CastQt5QtCreatorLubuntuToWindows" myprofile=$mytarget.pro   if [ ! -e $myprofile ] then   echo "FAIL: Qt Creator project '$myprofile' not found"   exit fi  $myfile $myprofile  if [ ! -e Makefile ] then   echo "FAIL: "$myfile" "$myprofile" (makefile not found)"   exit fi  make  if [ -e ./release/$myexe ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL (executable not found)" fi  #Cleaning up rm -r release rm -r debug rm Makefile rm Makefile.*`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
