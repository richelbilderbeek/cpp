
 

 

 

 

 

([C++](Cpp.md)) [StdUniform\_int\_distributionExample2](CppStdUniform_int_distributionExample2.md)
====================================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdUniform\_int\_distributionExample2/CppStdUniform\_int\_distributionExample2.pro
--------------------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri")  SOURCES += main.cpp`
  -----------------------------------------------------------------

 

 

 

 

 

./CppStdUniform\_int\_distributionExample2/main.cpp
---------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <random>  int main() {   std::random_device rd;    //Use a random seed   std::mt19937 rng(rd());    //Draw random numbers from 0 to and including 123   std::uniform_int_distribution<int> distribution(0,123);    for (int i=0; i!=10; ++i)   {     std::cout << distribution(rng) << '\n';   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

