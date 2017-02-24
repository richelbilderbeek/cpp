



 

 

 

 

 

([C++](Cpp.md)) ![QuantLib](PicQuantLib.png) [GetQuantLibVersion](CppGetQuantLibVersion.md)
=============================================================================================

 

[GetQuantLibVersion](CppGetQuantLibVersion.md) is a
[version](CppVersion.md) [code snippets](CppCodeSnippets.md) to obtain
the [version](CppVersion.md) of the current [QuantLib](CppQuantLib.md)
[library](CppLibrary.md).

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 11.04 (natty)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.5.2

[Libraries](CppLibrary.md) used:

-   ![QuantLib](PicQuantLib.png) [QuantLib](CppQuantLib.md): version
    1\_1
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.5.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppGetQuantLibVersion.pro
------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-06-26T09:25:02 # #------------------------------------------------- QT       += core QT       -= gui LIBS += -L/opt/local/lib -lQuantLib INCLUDEPATH += /opt/local/include/ -opt/local/include/boost TARGET = CppGetQuantLibVersion CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ql/quantlib.hpp>  ///GetQuantLibVersion returns the version number of QuantLib currently installed. ///From http://www.richelbilderbeek.nl/CppGetQuantLibVersion.htm const std::string GetQuantLibVersion() {   return QL_LIB_VERSION; }   #include <iostream>  int main() {   std::cout << GetQuantLibVersion() << '\n'; } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



