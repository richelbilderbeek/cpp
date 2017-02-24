



 

 

 

 

 

([C++](Cpp.htm)) [std::ldiv](CppLdiv.htm)
=========================================

 

[std::ldiv](CppLdiv.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) for [long integer](CppLongInt.htm) division,
which creates a [std::ldiv\_t](CppLdiv_t.htm) containing the quotient
and remainder of the division.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const long int i = 7;   const long int j = 3;   const std::ldiv_t d = std::ldiv(i,j);   //Assume the quotient equals (7 / 3) == 2   assert(d.quot == 2);   //Assume the remainder equals (7 % 3) == 1   assert(d.rem == 1); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The related [std::div](CppDiv.htm) [function](CppFunction.htm) works on
[ints](CppInt.htm).

 

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppLdiv.pro
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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
