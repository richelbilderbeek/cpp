[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdNormal\_distributionExample1](CppStdNormal_distributionExample1.htm)
=========================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdNormal\_distributionExample1/CppStdNormal\_distributionExample1.pro
--------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppStdNormal\_distributionExample1/main.cpp
---------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <random>  int main() {   const double mean{0.0};   const double stddev{1.0};   std::normal_distribution<double> d(mean,stddev);   assert(d.mean() == mean);   assert(d.stddev() == stddev);    const int rng_seed{42};   std::mt19937 rng(rng_seed);    for (int i=0; i!=20; ++i)   {     std::cout << d(rng) << '\n';   } }  /*  -0.550234 0.515433 0.473861 1.36845 -0.916827 -0.124147 -2.01096 -0.492803 0.39258 -0.929185 0.0798318 -0.159516 0.0222218 -0.427793 -0.531817 -0.117476 0.222079 -0.767976 0.142465 -0.0346522 Press <RETURN> to close this window...  */`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
