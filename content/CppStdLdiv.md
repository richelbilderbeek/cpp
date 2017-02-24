
 

 

 

 

 

([C++](Cpp.md)) [std::ldiv](CppLdiv.md)
=========================================

 

[std::ldiv](CppLdiv.md) is an [STL](CppStl.md)
[function](CppFunction.md) for [long integer](CppLongInt.md) division,
which creates a [std::ldiv\_t](CppLdiv_t.md) containing the quotient
and remainder of the division.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const long int i = 7;   const long int j = 3;   const std::ldiv_t d = std::ldiv(i,j);   //Assume the quotient equals (7 / 3) == 2   assert(d.quot == 2);   //Assume the remainder equals (7 % 3) == 1   assert(d.rem == 1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The related [std::div](CppDiv.md) [function](CppFunction.md) works on
[ints](CppInt.md).

 

 

 

 

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppLdiv.pro
----------------------------------------------------

 

-   [Download the Qt Creator project 'CppLdiv' (zip)](CppLdiv.zip)

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const long int i = 7;   const long int j = 3;   const std::ldiv_t d = std::ldiv(i,j);   //Assume the quotient equals (7 / 3) == 2   assert(d.quot == 2);   //Assume the remainder equals (7 % 3) == 1   assert(d.rem == 1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project 'CppLdiv' (zip)](CppLdiv.zip)

 

 

 

 

 

 

