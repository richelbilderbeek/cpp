
 

 

 

 

 

([C++](Cpp.md)) [SmartPointerExample2](CppSmartPointerExample2.md)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppSmartPointerExample2/CppSmartPointerExample2.pro
----------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra  unix {   QMAKE_CXXFLAGS += -Werror }  win32 {   INCLUDEPATH += ../../Libraries/boost_1_54_0 }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppSmartPointerExample2/main.cpp
----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory> #include <boost/scoped_ptr.hpp> #include <boost/shared_ptr.hpp>  struct Test { int m_x; };  int main() {   {     std::shared_ptr<Test> p { new Test };     assert(p);     //p.reset(nullptr); //Invalid: std::shared_ptr cannot be reset to nullptr     //assert(!p);   }   {     std::unique_ptr<Test> p { new Test };     assert(p);     p.reset(nullptr); //Valid: std::unique_ptr can be reset to nullptr     assert(!p);   }   {     boost::shared_ptr<Test> p { new Test };     assert(p);     //p.reset(nullptr); //Invalid: boost::shared_ptr cannot be reset to nullptr     //assert(!p);   }   {     boost::scoped_ptr<Test> p { new Test };     assert(p);     p.reset(nullptr); //Valid: boost::scoped_ptr can be reset to nullptr     assert(!p);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

