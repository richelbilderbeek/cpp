



 

 

 

 

 

([C++](Cpp.htm)) [GslExample1](CppGslExample1.htm)
==================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppGslExample1/CppGslExample1.pro
----------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  INCLUDEPATH += ../../Libraries/gsl-1.16  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGslExample1/main.cpp
-------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <gsl/gsl_sf_bessel.h>  int main () {   const double x = 5.0;   const double y = gsl_sf_bessel_J0(x);   std::cout << "J0(" << x << ") = " << y << '\n" }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
