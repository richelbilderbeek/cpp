
 

 

 

 

 

([C++](Cpp.md)) [HelloBoostRegexQt5QtCreatorLubuntuToWindows](CppHelloBoostRegexQt5QtCreatorLubuntuToWindows.md)
==================================================================================================================

 

![Boost](PicBoost.png)![Qt5](PicQt5.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png)

 

[Hello Boost.Regex using Qt5 under Qt Creator under Lubuntu,
crosscompiled to
Windows](CppHelloBoostRegexQt5QtCreatorLubuntuToWindows.md) is a [Hello
Boost.Regex](CppHelloBoostRegex.md) program.

 

-   [Download the Qt Creator project
    'CppHelloBoostRegexQt5QtCreatorLubuntuToWindows' (zip)](CppHelloBoostRegexQt5QtCreatorLubuntuToWindows.zip)

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.55
-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloBoostRegexQt5QtCreatorLubuntuToWindows/CppHelloBoostRegexQt5QtCreatorLubuntuToWindows.pro
--------------------------------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  LIBS += -L../../Libraries/mxe/usr/i686-pc-mingw32/lib LIBS += -lboost_regex`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQt5QtCreatorLubuntuToWindows/main.cpp
---------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/regex.hpp>   int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQt5QtCreatorLubuntuToWindows/CppHelloBoostRegexQt5QtCreatorLubuntuToWindows.sh
--------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash myfile="../../Libraries/mxe/usr/i686-pc-mingw32/qt5/bin/qmake" mytarget="CppHelloBoostRegexQt5QtCreatorLubuntuToWindows" myprofile=$mytarget.pro  if [ ! -e $myprofile ] then   echo "FAIL: Qt Creator project '$myprofile' not found"   exit fi  $myfile $myprofile  if [ ! -e Makefile ] then   echo "FAIL: "$myfile" "$myprofile" (makefile not found)"   exit fi  make  if [ -e ./release/$myexe ] then   echo $mytarget": SUCCESS" else   echo $mytarget": FAIL (executable not found)" fi  #Cleaning up rm -r release rm -r debug rm Makefile rm Makefile.*`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

