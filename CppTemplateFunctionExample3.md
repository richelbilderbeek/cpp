[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [TemplateFunctionExample3](CppTemplateFunctionExample3.htm)
============================================================================

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppTemplateFunctionExample3/CppTemplateFunctionExample3.pro
------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp \     data.cpp  HEADERS += \     data.h  CONFIG(release, debug|release) {   DEFINES += NDEBUG }  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }  win32 {   INCLUDEPATH += \     ../../Libraries/boost_1_54_0 }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateFunctionExample3/data.h
------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef DATA_H #define DATA_H  #include <string>  struct Data {   Data(const int i, const double d, const std::string& s);   int m_int;   double m_double;   std::string m_string; };  template <class T> const T& Get(const Data&); template <> const int& Get<int>(const Data& d); template <> const double& Get<double>(const Data& d); template <> const std::string& Get<std::string>(const Data& d);  #endif // DATA_H`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateFunctionExample3/data.cpp
--------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "data.h"  #include <cassert>  Data::Data(const int i, const double d, const std::string& s)   : m_int(i), m_double(d), m_string(s) {   assert(Get<int>(*this) == m_int);   assert(Get<double>(*this) == m_double);   assert(Get<std::string>(*this) == m_string); }  template <> const int& Get<int>(const Data& d) { return d.m_int; } template <> const double& Get<double>(const Data& d) { return d.m_double; } template <> const std::string& Get<std::string>(const Data& d) { return d.m_string; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateFunctionExample3/main.cpp
--------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath> #include <string>  #include "data.h"  int main() {   const double x = 123.456;   const Data d(42,x,"Hello world");   assert(Get<int>(d) == 42);   assert(Get<double>(d) == x);   assert(Get<std::string>(d) == "Hello world"); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
