[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::accumulate example 1: summing a std::vector of integers](CppAccumulateExample1.htm)
==========================================================================================================

 

[std::accumulate example 1: summing a std::vector of
integers](CppAccumulateExample1.htm) is a
[std::accumulate](CppAccumulate.htm) example to sum a
[std::vector](CppVector.htm) of [integers](CppInt.htm).

 

-   Download the Qt Creator project 'CppAccumulateExample1' (zip)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppAccumulateExample1.pro
------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector> #include <numeric>  int main() {   //Create a std::vector   std::vector<int> v;   for (int i=0; i!=10; ++i) { v.push_back(i); }    //Sum the std::vector   const int sum = std::accumulate(v.begin(), v.end(), 0 ); // '0' is the initial value    //Assume std::accumulate works correctly   assert(sum == 45); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
