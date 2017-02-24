[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GreaterThan](CppGreaterThan.htm)
==================================================

 

[GreaterThan](CppGreaterThan.htm) is an example
[functor](CppFunctor.htm).

 

-   [Download the Qt Creator project
    'CppGreaterThan' (zip)](CppGreaterThan.zip)

 

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppGreaterThan.pro
-----------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppFunctorGreaterThan.htm #pragma GCC diagnostic ignored "-Weffc++" struct GreaterThan : public std::unary_function<bool,int> {   explicit GreaterThan(const int x) : m_x(x) {}   bool operator()(const int x) const   {     return x > m_x;   }    private:   int m_x; }; #pragma GCC diagnostic pop   const std::vector<int> CreateVector() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   std::random_shuffle(v.begin(),v.end());   return v; }   int main() {   const std::vector<int> v = CreateVector();   assert(std::count_if(v.begin(),v.end(),GreaterThan(-1))==3);   assert(std::count_if(v.begin(),v.end(),GreaterThan( 0))==2);   assert(std::count_if(v.begin(),v.end(),GreaterThan( 1))==1);   assert(std::count_if(v.begin(),v.end(),GreaterThan( 2))==0);    assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan(-2)))==0);   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan(-1)))==0);   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan( 0)))==1);   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan( 1)))==2); //FAILS???   assert(std::count_if(v.begin(),v.end(),std::not1(GreaterThan( 2)))==3); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
