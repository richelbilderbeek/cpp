



 

 

 

 

 

([C++](Cpp.md)) [GreaterThan](CppGreaterThan.md)
==================================================

 

[GreaterThan](CppGreaterThan.md) is an example
[functor](CppFunctor.md).

 

-   [Download the Qt Creator project
    'CppGreaterThan' (zip)](CppGreaterThan.zip)

 

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppGreaterThan.pro
-----------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppFunctorGreaterThan.htm #pragma GCC diagnostic ignored "-Weffc++" struct GreaterThan : public std::unary_function<bool,int> {   explicit GreaterThan(const int x) : m_x(x) {}   bool operator()(const int x) const   {     return x > m_x;   }    private:   int m_x; }; #pragma GCC diagnostic pop   const std::vector<int> CreateVector() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   std::random_shuffle(v.begin(),v.end());   return v; }   int main() {   const std::vector<int> v = CreateVector();   assert(std::count_if(v.begin(),v.end(),GreaterThan(-1))==3);   assert(std::count_if(v.begin(),v.end(),GreaterThan( 0))==2);   assert(std::count_if(v.begin(),v.end(),GreaterThan( 1))==1);   assert(std::count_if(v.begin(),v.end(),GreaterThan( 2))==0);    assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan(-2)))==0);   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan(-1)))==0);   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan( 0)))==1);   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan( 1)))==2); //FAILS???   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan( 2)))==3); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
