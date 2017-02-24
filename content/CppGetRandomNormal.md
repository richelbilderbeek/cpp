
 

 

 

 

 

([C++](Cpp.md)) [GetRandomNormal](CppGetRandomNormal.md)
==========================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[GetRandomNormal](CppGetRandomNormal.md) is a [random](CppRandom.md)
[code snippet](CppCodeSnippets.md) to draw a value from a normal
distribution with average 'mean' and a standard deviation of 'sigma'.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppGetRandomNormal/CppGetRandomNormal.pro
------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri") SOURCES += main.cpp`
  ----------------------------------------------------------------

 

 

 

 

 

./CppGetRandomNormal/main.cpp
-----------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <random>   ///GetRandomNormal draws a random number from a normal distribution ///with average mean and standard deviation of sigmal. ///From http://www.richelbilderbeek.nl/CppGetRandomNormal.htm double GetRandomNormal(const double mean = 0.0, const double sigma = 1.0) {   //rd is used only to initialize mt with a truly random seed   static std::random_device rd;   //mt generates random numbers   static std::mt19937 mt(rd());   //d puts these random numbers in the correct distribution   std::normal_distribution<double> d(mean,sigma);   //The random value x gets drawn here   const double x{d(mt)};   return x; }  int main() {   for (int i=0; i!=10; ++i)   {     const double x{GetRandomNormal()};     std::cout << x << '\n';   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

