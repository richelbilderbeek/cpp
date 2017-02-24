
 

 

 

 

 

([C++](Cpp.md)) ![Boost](PicBoost.png)![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png) ['Hello Boost' using Qt Creator under Windows](CppHelloBoostQtCreatorWindows.md)
==================================================================================================================================================================================

 

[Hello Boost](CppHelloBoost.md) is an extension of [Hello
World](CppHelloWorld.md). Like [Hello World](CppHelloWorld.md), [Hello
Boost](CppHelloBoost.md) is a simple console application. [Hello
Boost](CppHelloBoost.md), however, also requires the
[Boost](CppBoost.md) [library](CppLibrary.md) and to
[link](CppLink.md) against the [Boost.Regex](CppRegex.md)
[library](CppLibrary.md).

 

-   [Download the Qt Creator project 'HelloBoost'
    (includes makefile)(zip)](CppHelloBoost.zip): this download works
    under both Ubuntu and Windows (if the path to the Boost.Regex
    library is valid on the Windows computer)

 

 

 

 

 

Operating system: Windows XP

[IDE](CppIde.md): [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md): console application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [Boost](CppBoost.md): version 1.40
-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

 

 

 

 

 

[Qt project file](CppQtProjectFile.md)
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-29T14:48:25 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloBoost unix:LIBS += -L/usr/lib -lboost_regex win32:LIBS +=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/regex.hpp>  int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

