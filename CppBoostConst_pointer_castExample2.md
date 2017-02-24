[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [BoostConst\_pointer\_castExample2](CppBoostConst_pointer_castExample2.htm)
============================================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[boost::const\_pointer\_cast example
2](CppBoostConst_pointer_castExample2.htm) is a
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostConst\_pointer\_castExample2/CppBoostConst\_pointer\_castExample2.pro
------------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostConst\_pointer\_castExample2/main.cpp
-----------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/shared_ptr.hpp> #pragma GCC diagnostic pop  struct MyClass { int x{42}; };  void f(const boost::shared_ptr<const MyClass>& p) { std::cout << p->x << std::endl; } void g(const boost::shared_ptr<const MyClass>  p) { std::cout << p->x << std::endl; }  int main() {   const boost::shared_ptr<MyClass> p{new MyClass};   f(p); //No boost::const_pointer_cast needed   g(p); //No boost::const_pointer_cast needed   const boost::shared_ptr<const MyClass> q{p};   f(q);   g(q); }  /* Screen output  42 42 42 42  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
