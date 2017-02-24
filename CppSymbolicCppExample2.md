[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SymbolicCppExample2](CppSymbolicCppExample2.htm)
==================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppSymbolicCppExample2/CppSymbolicCppExample2.pro
--------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/SymbolicCpp.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppSymbolicCppExample2/main.cpp
---------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream> #include "symbolicc++.h"  std::string ToStr(const Symbolic& s) {   std::stringstream str;   str << s;   return str.str(); }  int main() {    Symbolic x("x");    std::stringstream s;    const Symbolic f = (3*x*x) + (2 * x) + sin(x);    const std::string f_str = ToStr(f);    assert(f_str == "3*x^(2)+2*x+sin(x)");     //Take the derivative of f    const Symbolic g = df(f,x);    const std::string g_str = ToStr(g);    assert(g_str == "6*x+cos(x)+2"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
