



 

 

 

 

 

([C++](Cpp.md)) [std::complex](CppComplex.md)
===============================================

 

[std::complex](CppComplex.md) is an [STL](CppStl.md) [template
class](CppTemplateClass.md) for a complex number.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <complex> #include <iostream>  int main() {   const double real_part_1 = 3.0;   const double imaginary_part_1 = 3.0;   const std::complex<double> c(real_part_1,imaginary_part_1);    const double real_part_2 = 4.0;   const double imaginary_part_2 = 4.0;   const std::complex<double> d(real_part_2,imaginary_part_2);    const std::complex<double> sum(c + d);   const std::complex<double> mult(c * d);   std::cout << c << '\n';   std::cout << d << '\n';   std::cout << sum << '\n';   std::cout << mult << '\n'; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -----------------------------
  ` (3,3) (4,4) (7,7) (0,24)`
  -----------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppComplex.pro
-------------------------------------------------------

 

  ------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp  `
  ------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <complex> #include <iostream>  int main() {   const double real_part_1 = 3.0;   const double imaginary_part_1 = 3.0;   const std::complex<double> c(real_part_1,imaginary_part_1);    const double real_part_2 = 4.0;   const double imaginary_part_2 = 4.0;   const std::complex<double> d(real_part_2,imaginary_part_2);    const std::complex<double> sum(c + d);   const std::complex<double> mult(c * d);   std::cout << c << '\n';   std::cout << d << '\n';   std::cout << sum << '\n';   std::cout << mult << '\n';   }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project 'CppComplex' (zip)](CppComplex.zip)

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
