
 

 

 

 

 

([C++](Cpp.md)) [SmartPointerExample1](CppSmartPointerExample1.md)
====================================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppSmartPointerExample1/CppSmartPointerExample1.pro
----------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Werror SOURCES += main.cpp  win32 {   INCLUDEPATH += ../../Libraries/boost_1_54_0 }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppSmartPointerExample1/main.cpp
----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <memory> #include <boost/scoped_ptr.hpp> #include <boost/shared_ptr.hpp>  struct Test { int m_x; };  int main() {   {     std::unique_ptr<Test> p;     assert(!p);     p->m_x = 42; //Danger: uninitialized pointer not detected by std::unique_ptr   }   {     std::shared_ptr<Test> p;     assert(!p);     p->m_x = 42; //Danger: uninitialized pointer not detected by std::shared_ptr   }   {     boost::shared_ptr<Test> p;     assert(!p);     p->m_x = 42; //Good: uninitialized pointer detected by boost::shared_ptr   }   {     boost::scoped_ptr<Test> p;     assert(!p);     p->m_x = 42; //Danger: uninitialized pointer not detected by boost::scoped_ptr   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
