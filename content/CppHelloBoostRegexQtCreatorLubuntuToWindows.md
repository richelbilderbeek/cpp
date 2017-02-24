



 

 

 

 

 

([C++](Cpp.md)) [HelloBoostRegexQtCreatorLubuntuToWindows](CppHelloBoostRegexQtCreatorLubuntuToWindows.md)
============================================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![To](PicTo.png)![Windows](PicWindows.png)

 

[Hello Boost.Regex using Qt Creator under Lubuntu, crosscompiled to
Windows](CppHelloBoostRegexQtCreatorLubuntuToWindows.md) is a [Hello
Boost.Regex](CppHelloBoostRegex.md) program.

 

-   [Download the Qt Creator project
    'CppHelloBoostRegexQtCreatorLubuntuToWindows' (zip)](CppHelloBoostRegexQtCreatorLubuntuToWindows.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloBoostRegexQtCreatorLubuntuToWindows/CppHelloBoostRegexQtCreatorLubuntuToWindows.pro
--------------------------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  LIBS += -L../../Libraries/mxe/usr/i686-pc-mingw32/lib LIBS += -lboost_regex`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQtCreatorLubuntuToWindows/main.cpp
------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/regex.hpp>   int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloBoostRegexQtCreatorLubuntuToWindows/CppHelloBoostRegexQtCreatorLubuntuToWindows.sh
--------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ``  #!/bin/bash myqmake="../../Libraries/mxe/usr/i686-pc-mingw32/qt5/bin/qmake"   #Cleaning up rm *.pro.user rm Makefile rm Makefile.* rm -r release rm -r debug rm ui_*.h rm qrc_*.cpp rm moc_*.cpp rm object_script*.*   for myprofile in `ls | egrep ".pro\>"` do   mytarget=`echo $myprofile | sed "s/\.pro//"`       $myqmake $myprofile       if [ ! -e Makefile ]   then     echo "FAIL: $myqmake $myprofile"   fi       make       if [ -e ./release/$mytarget".exe" ]   then     echo $mytarget": SUCCESS"     cp ./release/$mytarget".exe" ~/bin/   else     echo $mytarget": FAIL"   fi       #Cleaning up   rm Makefile   rm Makefile.*   rm -r release   rm -r debug   rm ui_*.h   rm qrc_*.cpp   rm moc_*.cpp   rm object_script*.*   done #next .pro file ``
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
