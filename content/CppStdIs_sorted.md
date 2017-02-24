



 

 

 

 

 

([C++](Cpp.htm)) ![C++11](PicCpp11.png) [std::is\_sorted](CppIs_sorted.htm)
===========================================================================

 

[std::is\_sorted](CppIs_sorted.htm) is a [C++11](Cpp11.htm)
[STL](CppStl.htm) [algorithm](CppAlgorithm.htm) to [check](CppCheck.htm)
if a [container](CppContainer.htm) is sorted.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <algorithm> #include <vector>  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl11(const T& v) {   return std::is_sorted(v.begin(),v.end()); }  #include <cassert>  int main() {   std::vector<int> v;   v.push_back(3);   v.push_back(2);   v.push_back(5);   v.push_back(1);   v.push_back(0);    assert(!std::is_sorted(v.begin(),v.end()));    std::sort(v.begin(),v.end());    assert(std::is_sorted(v.begin(),v.end())); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

std::is\_sorted test
--------------------

 

-   [Download the Qt Creator project
    'CppIs\_sorted' (zip)](CppIs_sorted.zip)

 

 

 

 

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppIs\_sorted.pro
----------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp  `
  ------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <algorithm> #include <functional> #include <vector>  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl98(const T& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<typename T::value_type>()) == v.end(); }  ///IsSorted checks if a std::vector is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl98VectorOnly(const std::vector<T>& v) {   return std::adjacent_find(     v.begin(),     v.end(),     std::greater<T>()) == v.end(); }  ///IsSorted checks if a container is sorted. ///From http://www.richelbilderbeek.nl/CppIsSorted.htm template <class T> bool IsSortedStl11(const T& v) {   return std::is_sorted(v.begin(),v.end()); }  #include <cassert>  int main() {   std::vector<int> v;   v.push_back(3);   v.push_back(2);   v.push_back(5);   v.push_back(1);   v.push_back(0);    assert(!IsSortedStl98(v));   assert(!IsSortedStl11(v));    std::sort(v.begin(),v.end());    assert(IsSortedStl98(v));   assert(IsSortedStl11(v)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
