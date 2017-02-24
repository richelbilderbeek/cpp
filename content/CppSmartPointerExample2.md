[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SmartPointerExample2](CppSmartPointerExample2.htm)
====================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppSmartPointerExample2/CppSmartPointerExample2.pro
----------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra  unix {   QMAKE_CXXFLAGS += -Werror }  win32 {   INCLUDEPATH += ../../Libraries/boost_1_54_0 }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppSmartPointerExample2/main.cpp
----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory> #include <boost/scoped_ptr.hpp> #include <boost/shared_ptr.hpp>  struct Test { int m_x; };  int main() {   {     std::shared_ptr<Test> p { new Test };     assert(p);     //p.reset(nullptr); //Invalid: std::shared_ptr cannot be reset to nullptr     //assert(!p);   }   {     std::unique_ptr<Test> p { new Test };     assert(p);     p.reset(nullptr); //Valid: std::unique_ptr can be reset to nullptr     assert(!p);   }   {     boost::shared_ptr<Test> p { new Test };     assert(p);     //p.reset(nullptr); //Invalid: boost::shared_ptr cannot be reset to nullptr     //assert(!p);   }   {     boost::scoped_ptr<Test> p { new Test };     assert(p);     p.reset(nullptr); //Valid: boost::scoped_ptr can be reset to nullptr     assert(!p);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
