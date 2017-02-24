
 

 

 

 

 

([C++](Cpp.md)) [std::minmax](CppMinmax.md)
=============================================

 

[std::minmax](CppMinmax.md) is an [algorithm](CppAlgorithm.md) to
obtain the begin and end of a [container](CppContainer.md) at the same
time.

 

-   [Download the Qt Creator project 'CppMinmax' (zip)](CppMinmax.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 11.10 (oneiric)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.3.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.6.1

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.6.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppMinmax.pro
------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-01-29T10:21:35 # #------------------------------------------------- QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++0x TARGET = CppMinmax CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert>  int main() {   const std::vector<int> v = { 100,1,2,3,4,5,6,7,8,9,-100 };   const std::pair<std::vector<int>::const_iterator,std::vector<int>::const_iterator> p     = std::minmax(v.begin(),v.end());   assert(p.first  == v.begin());   assert(p.second == v.end());   const int min = *(p.first);   const int max = *(p.second-1);   assert(min ==  100);   assert(max == -100); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

