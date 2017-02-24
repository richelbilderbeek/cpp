



 

 

 

 

 

([C++](Cpp.htm)) [GetRandomNormalBoost](CppGetRandomNormalBoost.htm)
====================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppGetRandomNormalBoost/CppGetRandomNormalBoost.pro
----------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri") SOURCES += main.cpp`
  ----------------------------------------------------------------

 

 

 

 

 

./CppGetRandomNormalBoost/main.cpp
----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/random/normal_distribution.hpp> #include <boost/random/lagged_fibonacci.hpp>  ///GetRandomNormalBoost draws a random number from a normal distribution ///with average mean and standard deviation of sigmal. ///From http://www.richelbilderbeek.nl/CppGetRandomNormalBoost.htm double GetRandomNormalBoost(const double mean = 0.0, const double sigma = 1.0) {   static boost::normal_distribution<double> norm_dist(mean, sigma);   static boost::lagged_fibonacci19937 engine;   const double value{norm_dist.operator () <boost::lagged_fibonacci19937>((engine))};   return value; }  int main() {   for (int i=0; i!=10; ++i)   {     const double x{GetRandomNormalBoost()};     std::cout << x << '\n';   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
