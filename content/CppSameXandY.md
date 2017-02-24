
 

 

 

 

 

([C++](Cpp.md)) [SameXandY](CppSameXandY.md)
==============================================

 

[SameXandY](CppSameXandY.md) is a [functor](CppFunctor.md) that checks
for equality of an x and y value.

 

-   [Download the Qt Creator project
    'CppSameXandY' (zip)](CppSameXandY.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppSameXandY.pro
---------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <functional> #include <vector> #include <algorithm>  struct Coordinat {   explicit Coordinat(const int x, const int y) : m_x(x), m_y(y) {}   int x() const { return m_x; }   int y() const { return m_y; }    private:   int m_x;   int m_y;   //... };   //Temporarily suppress the -Weffc++ compiler option //  caused by inheriting from std::unary_function. //See http://richelbilderbeek.nl/CppWeffcpp.htm #pragma GCC diagnostic ignored "-Weffc++"  //From http://www.richelbilderbeek.nl/CppSameXandY.htm template <class T> struct SameXandY : public std::unary_function<T,bool> {   explicit SameXandY(const T& coordinat) : m_coordinat(coordinat) {}   bool operator()(const T& coordinat) const   {     return coordinat.x() == m_coordinat.x() && coordinat.y() == m_coordinat.y();   }    private:   const T m_coordinat; };  //Restore the -Weffc++ compiler option, #pragma GCC diagnostic pop   int main() {   std::vector<Coordinat> v;   for (int i=0; i!=10; ++i) v.push_back(Coordinat(i,i));   assert( std::find_if(v.begin(), v.end(), SameXandY<Coordinat>(Coordinat(3,5))) == v.end());   assert( std::find_if(v.begin(), v.end(), SameXandY<Coordinat>(Coordinat(5,5))) != v.end()); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
