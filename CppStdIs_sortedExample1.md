[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdIs\_sortedExample1](CppStdIs_sortedExample1.htm)
=====================================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdIs\_sortedExample1/CppStdIs\_sortedExample1.pro
------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdIs\_sortedExample1/main.cpp
-----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl98(const T& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<typename T::value_type>()) == v.end(); }  ///IsSorted checks if a std::vector is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl98VectorOnly(const std::vector<T>& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<T>()) == v.end(); }  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl11(const T& v) {   return is_sorted(v.begin(),v.end()); }  #include <cassert>  int main() {   std::vector<int> v;   v.push_back(3);   v.push_back(2);   v.push_back(5);   v.push_back(1);   v.push_back(0);    assert(!IsSortedStl98(v));   assert(!IsSortedStl11(v));    std::sort(v.begin(),v.end());    assert(IsSortedStl98(v));   assert(IsSortedStl11(v)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
