



 

 

 

 

 

([C++](Cpp.htm)) [GetRandomUniform](CppGetRandomUniform.htm)
============================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[GetRandomUniform](CppGetRandomUniform.htm) is a [random](CppRandom.htm)
[code snippet](CppCodeSnippets.htm) to draw a value from 0.0 to (and not
including) 1.0. All values have an equal likelyhood to be drawn.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppGetRandomUniform/CppGetRandomUniform.pro
--------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri") SOURCES += main.cpp`
  ----------------------------------------------------------------

 

 

 

 

 

./CppGetRandomUniform/main.cpp
------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <random> #include <iostream>  ///GetRandomUniform draws a random number from 0.0 to and excluding 1.0. ///From http://www.richelbilderbeek.nl/CppGetRandomUniform.htm double GetRandomUniform() {   //rd is used only to initialize mt with a truly random seed   static std::random_device rd;   //mt generates random numbers   static std::mt19937 mt(rd());   //d puts these random numbers in the correct distribution   static std::uniform_real_distribution<double> d(0.0,1.0);   //The random value x gets drawn here   const double x{d(mt)};   return x; }  int main() {   for (int i=0; i!=10; ++i)   {     const double x{GetRandomUniform()};     assert(x >= 0.0 && x < 1.0);     std::cout << x << '\n';   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
