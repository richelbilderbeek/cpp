[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SameXandY](CppSameXandY.htm)
==============================================

 

[SameXandY](CppSameXandY.htm) is a [functor](CppFunctor.htm) that checks
for equality of an x and y value.

 

-   [Download the Qt Creator project
    'CppSameXandY' (zip)](CppSameXandY.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppSameXandY.pro
---------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <functional> #include <vector> #include <algorithm>  struct Coordinat {   explicit Coordinat(const int x, const int y) : m_x(x), m_y(y) {}   int x() const { return m_x; }   int y() const { return m_y; }    private:   int m_x;   int m_y;   //... };   //Temporarily suppress the -Weffc++ compiler option //  caused by inheriting from std::unary_function. //See http://richelbilderbeek.nl/CppWeffcpp.htm #pragma GCC diagnostic ignored "-Weffc++"  //From http://www.richelbilderbeek.nl/CppSameXandY.htm template <class T> struct SameXandY : public std::unary_function<T,bool> {   explicit SameXandY(const T& coordinat) : m_coordinat(coordinat) {}   bool operator()(const T& coordinat) const   {     return coordinat.x() == m_coordinat.x() && coordinat.y() == m_coordinat.y();   }    private:   const T m_coordinat; };  //Restore the -Weffc++ compiler option, #pragma GCC diagnostic pop   int main() {   std::vector<Coordinat> v;   for (int i=0; i!=10; ++i) v.push_back(Coordinat(i,i));   assert( std::find_if(v.begin(), v.end(), SameXandY<Coordinat>(Coordinat(3,5))) == v.end());   assert( std::find_if(v.begin(), v.end(), SameXandY<Coordinat>(Coordinat(5,5))) != v.end()); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
