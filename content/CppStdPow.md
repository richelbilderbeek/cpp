



 

 

 

 

 

([C++](Cpp.htm)) [std::pow](CppPow.htm)
=======================================

 

[std::pow](CppPow.htm) is a [mathematical](CppMath.htm)
[STL](CppStl.htm) [function](CppFunction.htm) to take the power of two
[doubles](CppDouble.htm).

 

-   [Download the Qt Creator project 'CppPow' (zip)](CppPow.zip)

 

To take the power of two [integers](CppInt.htm), use
[IntPower](CppIntPower.htm) instead.

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 11.10 (oneiric)

[IDE(s)](CppIde.htm):

-   ![C++ Builder](PicCppBuilder.png) [C++ Builder](CppBuilder.htm) 6.0
    Enterprise edition

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.6.1

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.6.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppPow.pro
---------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-01-28T16:44:39 # #-------------------------------------------------  QT       += core  QT       -= gui  TARGET = CppPow CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app   SOURCES += main.cpp `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream>  int main() {   const double base = 1.1;   const double exponent = 2.2;   const double result = std::pow(1.1,2.2);   std::cout << base << " to the power of " << exponent << " is " << result << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
