



 

 

 

 

 

([C++](Cpp.htm)) [std::accumulate example 2: summing a std::vector of a custom class using a C++11 lambda expression](CppAccumulateExample2.htm)
================================================================================================================================================

 

[std::accumulate example 2: summing a std::vector of a custom class
using a C++11 lambda expression](CppAccumulateExample2.htm) is a
[std::accumulate](CppAccumulate.htm) example to sum a
[std::vector](CppVector.htm) of a custom [class](CppClass.htm) using a
[C++11](Cpp11.htm) [lambda expression](CppLambdaExpression.htm).

 

-   Download the Qt Creator project 'CppAccumulateExample2' (zip)

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.04 (raring)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.7.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.3

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppAccumulateExample2.pro
------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------
  ` QMAKE_CXXFLAGS += -std=c++11 TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector> #include <numeric>  struct MyClass {   MyClass(const int x = 0) : m_x(x) {}   int Get() const { return m_x; }   private:   int m_x; };  int main() {   //Create a std::vector   std::vector<MyClass> v;   for (int i=0; i!=10; ++i) { v.push_back(MyClass(i)); }    //Sum the std::vector using a C++11 lambda expression   const int sum     = std::accumulate(       v.begin(),       v.end(),       0, // '0' is the initial value       [](const int sum, const MyClass& my_class)       {         return sum + my_class.Get();       }     );    //Assume std::accumulate works correctly   assert(sum == 45); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
