



 

 

 

 

 

([C++](Cpp.md)) [StdExponential\_distributionExample1](CppStdExponential_distributionExample1.md)
===================================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdExponential\_distributionExample1/CppStdExponential\_distributionExample1.pro
------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppStdExponential\_distributionExample1/main.cpp
--------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <random>  int main() {   const double lambda{1.0};   std::exponential_distribution<double> d(lambda);   assert(lambda == d.lambda());    const int rng_seed{42};   std::mt19937 rng(rng_seed);    for (int i=0; i!=20; ++i)   {     std::cout << d(rng) << '\n';   } }  /*  1.5923 0.202649 1.51272 0.908447 0.590289 0.105333 0.614796 0.406028 0.154162 1.05236 0.0580652 1.28013 2.78958 0.000779068 4.85512 0.960978 0.945856 0.00709139 0.0233325 0.743966 Press <RETURN> to close this window...  */`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
