



 

 

 

 

 

([C++](Cpp.md)) [StdUnique\_ptrExample1](CppStdUnique_ptrExample1.md)
=======================================================================

 

![Cpp11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[std::unique\_ptr example 1: basics](CppUnique_ptrExample1.md) is a
[std::unique\_ptr](CppUnique_ptr.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppUnique\_ptrExample1' (zip)](CppUnique_ptrExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdUnique\_ptrExample1/CppStdUnique\_ptrExample1.pro
--------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(release, debug|release) {   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }  # # # Boost # #  win32 {   INCLUDEPATH += \     ../../Libraries/boost_1_54_0 }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdUnique\_ptrExample1/main.cpp
------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <memory>  struct Test { int m_x; };  int main() {   {     std::unique_ptr<Test> p; //Uninitialized pointer     //assert(p);  //Good: uninitialized pointer is detected     //p->m_x = 3; //Bad: results in an access violation   }   {     std::unique_ptr<Test> p(new Test);     p->m_x = 3; //OK   }   {     std::unique_ptr<Test> p;     p.reset(new Test);     p->m_x = 3; //OK   }   {     std::unique_ptr<Test> p(new Test);     //std::unique_ptr<Test> q(p); //std::unique_ptr cannot be copied   }   {     std::unique_ptr<Test> p(new Test);     std::shared_ptr<Test> q(p.release()); //Transfer ownership     assert(!p);     assert(q);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
