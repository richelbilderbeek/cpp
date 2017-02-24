[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![QuantLib](PicQuantLib.png) [GetQuantLibVersion](CppGetQuantLibVersion.htm)
=============================================================================================

 

[GetQuantLibVersion](CppGetQuantLibVersion.htm) is a
[version](CppVersion.htm) [code snippets](CppCodeSnippets.htm) to obtain
the [version](CppVersion.htm) of the current [QuantLib](CppQuantLib.htm)
[library](CppLibrary.htm).

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 11.04 (natty)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.5.2

[Libraries](CppLibrary.htm) used:

-   ![QuantLib](PicQuantLib.png) [QuantLib](CppQuantLib.htm): version
    1\_1
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.5.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppGetQuantLibVersion.pro
------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-06-26T09:25:02 # #------------------------------------------------- QT       += core QT       -= gui LIBS += -L/opt/local/lib -lQuantLib INCLUDEPATH += /opt/local/include/ -opt/local/include/boost TARGET = CppGetQuantLibVersion CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ql/quantlib.hpp>  ///GetQuantLibVersion returns the version number of QuantLib currently installed. ///From http://www.richelbilderbeek.nl/CppGetQuantLibVersion.htm const std::string GetQuantLibVersion() {   return QL_LIB_VERSION; }   #include <iostream>  int main() {   std::cout << GetQuantLibVersion() << '\n'; } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
