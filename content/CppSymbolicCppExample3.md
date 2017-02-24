
 

 

 

 

 

([C++](Cpp.md)) [SymbolicCppExample3](CppSymbolicCppExample3.md)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppSymbolicCppExample3/CppSymbolicCppExample3.pro
--------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/SymbolicCpp.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppSymbolicCppExample3/main.cpp
---------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include "symbolicc++.h"  int main() {   const Symbolic x("x");   const Symbolic f = (3.0*x*x) + (2.0 * x) + 1.0;   const Equation value = x == 3;   const double result = f.subst(value);   assert(result >= 33.9999 && result <= 34.0001); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
