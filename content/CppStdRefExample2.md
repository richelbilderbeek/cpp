
 

 

 

 

 

([C++](Cpp.md)) [StdRefExample2](CppStdRefExample2.md)
========================================================

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdRefExample2/CppStdRefExample2.pro
----------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdRefExample2/main.cpp
----------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <vector> #include <functional>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   v.push_back(3);   v.push_back(4);    std::vector<std::reference_wrapper<int> > w;   const std::size_t sz = v.size();   for (std::size_t i=0; i!=sz; ++i)   {     const std::reference_wrapper<int> my_wrapper(v[i]);     w.push_back(my_wrapper);   }    for (std::size_t i=0; i!=sz; ++i)   {     assert(v[i] == w[i]);     std::cout << i << '\t' << v[i] << '\t' << w[i] << '\n';   }    std::cout << "After shuffling:\n";   std::random_shuffle(w.begin(),w.end());    for (std::size_t i=0; i!=sz; ++i)   {     std::cout << i << '\t' << v[i] << '\t' << w[i] << '\n';   }    //Squaring all values in v   for (std::size_t i=0; i!=sz; ++i)   {     v[i] *= v[i];   }    std::cout << "After squaring:\n";   for (std::size_t i=0; i!=sz; ++i)   {     std::cout << i << '\t' << v[i] << '\t' << w[i] << '\n';   }    //Squaring all values in w   for (std::size_t i=0; i!=sz; ++i)   {     w[i] *= w[i];   }    std::cout << "After squaring again:\n";   for (std::size_t i=0; i!=sz; ++i)   {     std::cout << i << '\t' << v[i] << '\t' << w[i] << '\n';   } }  /* Screen output:  0   0   0 1   1   1 2   2   2 3   3   3 4   4   4 After shuffling: 0   0   4 1   1   3 2   2   1 3   3   2 4   4   0 After squaring: 0   0   16 1   1   9 2   4   1 3   9   4 4   16  0 After squaring again: 0   0   256 1   1   81 2   16  1 3   81  16 4   256 0  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

