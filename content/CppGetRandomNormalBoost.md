
 

 

 

 

 

([C++](Cpp.md)) [GetRandomNormalBoost](CppGetRandomNormalBoost.md)
====================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppGetRandomNormalBoost/CppGetRandomNormalBoost.pro
----------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri") SOURCES += main.cpp`
  ----------------------------------------------------------------

 

 

 

 

 

./CppGetRandomNormalBoost/main.cpp
----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/random/normal_distribution.hpp> #include <boost/random/lagged_fibonacci.hpp>  ///GetRandomNormalBoost draws a random number from a normal distribution ///with average mean and standard deviation of sigmal. ///From http://www.richelbilderbeek.nl/CppGetRandomNormalBoost.htm double GetRandomNormalBoost(const double mean = 0.0, const double sigma = 1.0) {   static boost::normal_distribution<double> norm_dist(mean, sigma);   static boost::lagged_fibonacci19937 engine;   const double value{norm_dist.operator () <boost::lagged_fibonacci19937>((engine))};   return value; }  int main() {   for (int i=0; i!=10; ++i)   {     const double x{GetRandomNormalBoost()};     std::cout << x << '\n';   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

