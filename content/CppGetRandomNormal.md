

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetRandomNormal](CppGetRandomNormal.htm)
==========================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[GetRandomNormal](CppGetRandomNormal.htm) is a [random](CppRandom.htm)
[code snippet](CppCodeSnippets.htm) to draw a value from a normal
distribution with average 'mean' and a standard deviation of 'sigma'.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppGetRandomNormal/CppGetRandomNormal.pro
------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri") SOURCES += main.cpp`
  ----------------------------------------------------------------

 

 

 

 

 

./CppGetRandomNormal/main.cpp
-----------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <random>   ///GetRandomNormal draws a random number from a normal distribution ///with average mean and standard deviation of sigmal. ///From http://www.richelbilderbeek.nl/CppGetRandomNormal.htm double GetRandomNormal(const double mean = 0.0, const double sigma = 1.0) {   //rd is used only to initialize mt with a truly random seed   static std::random_device rd;   //mt generates random numbers   static std::mt19937 mt(rd());   //d puts these random numbers in the correct distribution   std::normal_distribution<double> d(mean,sigma);   //The random value x gets drawn here   const double x{d(mt)};   return x; }  int main() {   for (int i=0; i!=10; ++i)   {     const double x{GetRandomNormal()};     std::cout << x << '\n';   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
