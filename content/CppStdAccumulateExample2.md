
 

 

 

 

 

([C++](Cpp.md)) [std::accumulate example 2: summing a std::vector of a custom class using a C++11 lambda expression](CppAccumulateExample2.md)
================================================================================================================================================

 

[std::accumulate example 2: summing a std::vector of a custom class
using a C++11 lambda expression](CppAccumulateExample2.md) is a
[std::accumulate](CppAccumulate.md) example to sum a
[std::vector](CppVector.md) of a custom [class](CppClass.md) using a
[C++11](Cpp11.md) [lambda expression](CppLambdaExpression.md).

 

-   Download the Qt Creator project 'CppAccumulateExample2' (zip)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.04 (raring)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.7.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.3

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppAccumulateExample2.pro
------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------
  ` QMAKE_CXXFLAGS += -std=c++11 TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector> #include <numeric>  struct MyClass {   MyClass(const int x = 0) : m_x(x) {}   int Get() const { return m_x; }   private:   int m_x; };  int main() {   //Create a std::vector   std::vector<MyClass> v;   for (int i=0; i!=10; ++i) { v.push_back(MyClass(i)); }    //Sum the std::vector using a C++11 lambda expression   const int sum     = std::accumulate(       v.begin(),       v.end(),       0, // '0' is the initial value       [](const int sum, const MyClass& my_class)       {         return sum + my_class.Get();       }     );    //Assume std::accumulate works correctly   assert(sum == 45); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
