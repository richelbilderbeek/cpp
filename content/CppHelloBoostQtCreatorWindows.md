[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Boost](PicBoost.png)![Qt Creator](PicQtCreator.png)![Windows](PicWindows.png) ['Hello Boost' using Qt Creator under Windows](CppHelloBoostQtCreatorWindows.htm)
==================================================================================================================================================================================

 

[Hello Boost](CppHelloBoost.htm) is an extension of [Hello
World](CppHelloWorld.htm). Like [Hello World](CppHelloWorld.htm), [Hello
Boost](CppHelloBoost.htm) is a simple console application. [Hello
Boost](CppHelloBoost.htm), however, also requires the
[Boost](CppBoost.htm) [library](CppLibrary.htm) and to
[link](CppLink.htm) against the [Boost.Regex](CppRegex.htm)
[library](CppLibrary.htm).

 

-   [Download the Qt Creator project 'HelloBoost'
    (includes makefile)(zip)](CppHelloBoost.zip): this download works
    under both Ubuntu and Windows (if the path to the Boost.Regex
    library is valid on the Windows computer)

 

 

 

 

 

Operating system: Windows XP

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm): console application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.40
-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-29T14:48:25 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloBoost unix:LIBS += -L/usr/lib -lboost_regex win32:LIBS +=C:/Qt/2010.02.1/qt/lib/libboost_regex.lib CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/regex.hpp>  int main() {   std::string s = "Hello World";   s = boost::regex_replace(s,boost::regex("World"),std::string("Boost"));   std::cout << s << '\n'; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
