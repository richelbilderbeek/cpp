[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [HelloCpp11QtCreatorLubuntuToWindows](CppHelloCpp11QtCreatorLubuntuToWindows.htm)
==================================================================================================

 

![C++11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png)

 

[Hello C++11 using Qt Creator under Lubuntu, crosscompiled to
Windows](CppHelloCpp11QtCreatorLubuntuToWindows.htm) is a [Hello
C++11](CppHelloCpp11.htm) program.

 

-   [Download the Qt Creator project
    'CppHelloCpp11QtCreatorLubuntuToWindows' (zip)](CppHelloCpp11QtCreatorLubuntuToWindows.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloCpp11QtCreatorLubuntuToWindows/CppHelloCpp11QtCreatorLubuntuToWindows.pro
----------------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++11 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp11QtCreatorLubuntuToWindows/main.cpp
-------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const auto s = "Hello C++11";   std::cout << s << '\n'; }`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloCpp11QtCreatorLubuntuToWindows/CppHelloCpp11QtCreatorLubuntuToWindows.sh
----------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash #From http://richelbilderbeek.nl/CppHelloCpp11QtCreatorLubuntuToWindows.htm echo "Cross compiling to Windows"  myfile="i686-pc-mingw32-qmake" #myfile="../../Libraries/mxe/usr/bin/i686-pc-mingw32-qmake" mytarget="CppHelloCpp11QtCreatorLubuntuToWindows" myprofile=$mytarget.pro   if [ -e $myfile ] then   echo "MXE crosscompiler '$myfile' found" else   echo "MXE crosscompiler '$myfile' not found"   #exit fi  if [ -e $myprofile ] then   echo "Qt Creator project '$myprofile' found" else   echo "Qt Creator project '$myprofile' not found"   exit fi  echo "1/2: Creating Windows makefile" $myfile $myprofile  if [ -e Makefile ] then   echo "Makefile created successfully" else   echo "FAIL: $myfile $myprofile"   exit fi  echo "2/2: making makefile"  make  if [ -e ./release/$mytarget.exe ] then   echo "SUCCESS" else   echo "FAIL" fi  #Cleaning up rm Makefile rm Makefile.* rm -r release rm -r debug`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
