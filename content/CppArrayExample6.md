
 

 

 

 

 

([C++](Cpp.md)) [ArrayExample6](CppArrayExample6.md)
======================================================

 

![STL](PicStl.png)

 

[Array example 6](CppArrayExample6.md) is an [array](CppArray.md)
[example](CppExample.md).

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppArrayExample6/CppArrayExample6.pro
--------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra QT += core QT += gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app  include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppArrayExample6/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/date_time/posix_time/ptime.hpp> #include <boost/date_time/microsec_time_clock.hpp> #include <iostream> const int sz = 100000;  struct Individual {   Individual() : m_v{std::vector<int>(1000,0)}   {    }   void Add() noexcept { ++m_v[0]; } private:   std::vector<int> m_v; //Make copying heavy };  void f(Individual v[sz]) {   for (int i=0; i!=sz; ++i)   {     v[i].Add();   } }  void g(Individual * const v) {   for (int i=0; i!=sz; ++i)   {     v[i].Add();   } }  int main() {    Individual v[sz];    const boost::posix_time::ptime start{boost::date_time::microsec_clock<boost::posix_time::ptime>::local_time()};   f(v);   const boost::posix_time::ptime after_f(boost::date_time::microsec_clock<boost::posix_time::ptime>::local_time());   g(v);   const boost::posix_time::ptime after_g(boost::date_time::microsec_clock<boost::posix_time::ptime>::local_time());   const boost::posix_time::time_duration d_f = after_f - start;   const boost::posix_time::time_duration d_g = after_g - start;   std::cout << d_f.total_microseconds() << " " << d_g.total_microseconds() << '\n' ; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
