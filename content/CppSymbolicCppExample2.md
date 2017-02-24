
 

 

 

 

 

([C++](Cpp.md)) [SymbolicCppExample2](CppSymbolicCppExample2.md)
==================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppSymbolicCppExample2/CppSymbolicCppExample2.pro
--------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/SymbolicCpp.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppSymbolicCppExample2/main.cpp
---------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream> #include "symbolicc++.h"  std::string ToStr(const Symbolic& s) {   std::stringstream str;   str << s;   return str.str(); }  int main() {    Symbolic x("x");    std::stringstream s;    const Symbolic f = (3*x*x) + (2 * x) + sin(x);    const std::string f_str = ToStr(f);    assert(f_str == "3*x^(2)+2*x+sin(x)");     //Take the derivative of f    const Symbolic g = df(f,x);    const std::string g_str = ToStr(g);    assert(g_str == "6*x+cos(x)+2"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

