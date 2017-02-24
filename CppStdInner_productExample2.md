[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdInner\_productExample2](CppStdInner_productExample2.htm)
=============================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdInner\_productExample2/CppStdInner\_productExample2.pro
--------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppStdInner\_productExample2/main.cpp
---------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <iterator> #include <vector>  int main() {    const std::vector<int> v{1,2,3};   const std::vector<int> w{2,3,4};    //Calculate the sum of the products, where w must be square:   // SUM(a * b^2)   // = 1*(2)^2 + 2*(3)^2 + 3*(4)^2   // = 1*4     + 2*9     + 3*16   // = 4       + 18      + 48   // = 70   const int sip = std::inner_product(     std::begin(v),     std::end(v),     std::begin(w),     0,     std::plus<int>(), //Sum the results     [](const int a, const int b) { return a * b * b; } //b must be square   );   assert(sip == 70); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
