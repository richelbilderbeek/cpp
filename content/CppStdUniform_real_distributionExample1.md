
 

 

 

 

 

([C++](Cpp.md)) [StdUniform\_real\_distributionExample1](CppStdUniform_real_distributionExample1.md)
======================================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdUniform\_real\_distributionExample1/CppStdUniform\_real\_distributionExample1.pro
----------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppStdUniform\_real\_distributionExample1/main.cpp
----------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <random>  int main() {   const double min{0.0};   const double max{1.0}; //Exclusive, 1.0 will never be drawn   std::uniform_real_distribution<double> d(min,max);   assert(d.min() == min);   assert(d.max() == max);    const int rng_seed{42};   std::mt19937 rng(rng_seed);    for (int i=0; i!=20; ++i)   {     std::cout << d(rng) << '\n';   } }  /*  0.796543 0.183435 0.779691 0.59685 0.445833 0.0999749 0.459249 0.333709 0.142867 0.650888 0.0564116 0.721999 0.938553 0.000778765 0.992212 0.617482 0.611653 0.00706631 0.0230624 0.524775 Press <RETURN> to close this window...  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
