
 

 

 

 

 

([C++](Cpp.md)) [std::pow](CppPow.md)
=======================================

 

[std::pow](CppPow.md) is a [mathematical](CppMath.md)
[STL](CppStl.md) [function](CppFunction.md) to take the power of two
[doubles](CppDouble.md).

 

-   [Download the Qt Creator project 'CppPow' (zip)](CppPow.zip)

 

To take the power of two [integers](CppInt.md), use
[IntPower](CppIntPower.md) instead.

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 11.10 (oneiric)

[IDE(s)](CppIde.md):

-   ![C++ Builder](PicCppBuilder.png) [C++ Builder](CppBuilder.md) 6.0
    Enterprise edition

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.6.1

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.6.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppPow.pro
---------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-01-28T16:44:39 # #-------------------------------------------------  QT       += core  QT       -= gui  TARGET = CppPow CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app   SOURCES += main.cpp `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream>  int main() {   const double base = 1.1;   const double exponent = 2.2;   const double result = std::pow(1.1,2.2);   std::cout << base << " to the power of " << exponent << " is " << result << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
