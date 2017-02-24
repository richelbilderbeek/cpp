



 

 

 

 

 

([C++](Cpp.md)) [GslExample1](CppGslExample1.md)
==================================================

 

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

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppGslExample1/CppGslExample1.pro
----------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  INCLUDEPATH += ../../Libraries/gsl-1.16  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGslExample1/main.cpp
-------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <gsl/gsl_sf_bessel.h>  int main () {   const double x = 5.0;   const double y = gsl_sf_bessel_J0(x);   std::cout << "J0(" << x << ") = " << y << '\n" }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
