



 

 

 

 

 

([C++](Cpp.htm)) [BoostConst\_pointer\_castExample1](CppBoostConst_pointer_castExample1.htm)
============================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[boost::const\_pointer\_cast example
1](CppBoostConst_pointer_castExample1.htm) is a
[boost::const\_pointer\_cast](CppBoostConst_pointer_cast.htm)
[example](CppExample.htm).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostConst\_pointer\_castExample1/CppBoostConst\_pointer\_castExample1.pro
------------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostConst\_pointer\_castExample1/main.cpp
-----------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/shared_ptr.hpp> #pragma GCC diagnostic pop  struct MyClass {};  int main() {   boost::shared_ptr<MyClass> p{new MyClass};   assert(p);   assert(p.use_count() == 1);   boost::shared_ptr<const MyClass> q{p}; //No boost::const_pointer_cast needed when adding constness   assert(q);   assert(p == q);   assert(p.use_count() == 2);   boost::shared_ptr<MyClass> r{boost::const_pointer_cast<MyClass>(q)};   assert(r);   assert(r == q);   assert(p.use_count() == 3); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
