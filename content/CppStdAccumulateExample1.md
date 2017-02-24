
 

 

 

 

 

([C++](Cpp.md)) [std::accumulate example 1: summing a std::vector of integers](CppAccumulateExample1.md)
==========================================================================================================

 

[std::accumulate example 1: summing a std::vector of
integers](CppAccumulateExample1.md) is a
[std::accumulate](CppAccumulate.md) example to sum a
[std::vector](CppVector.md) of [integers](CppInt.md).

 

-   Download the Qt Creator project 'CppAccumulateExample1' (zip)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppAccumulateExample1.pro
------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector> #include <numeric>  int main() {   //Create a std::vector   std::vector<int> v;   for (int i=0; i!=10; ++i) { v.push_back(i); }    //Sum the std::vector   const int sum = std::accumulate(v.begin(), v.end(), 0 ); // '0' is the initial value    //Assume std::accumulate works correctly   assert(sum == 45); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
