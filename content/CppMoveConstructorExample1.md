



 

 

 

 

 

([C++](Cpp.htm)) [MoveConstructorExample1](CppMoveConstructorExample1.htm)
==========================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppMoveConstructorExample1/CppMoveConstructorExample1.pro
----------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMoveConstructorExample1/main.cpp
-------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <utility>  struct MyClass {   MyClass(const int x = 0) noexcept : m_x(x) {}   MyClass(MyClass&& other) noexcept : m_x(other.m_x)   {     const_cast<int&>(other.m_x) = 0;   }   MyClass(const MyClass&) = delete;   MyClass& operator=(const MyClass&) = delete;    int GetX() const noexcept { return m_x; }    private:   ///'const int' is trivial, imaging this being a 'const Database' instead   const int m_x; };  int main() {   MyClass a(42);   assert(a.GetX() == 42);    //Initialize b with the internals of a,   //leave a without its internals   const MyClass b { std::move(a) };    assert(a.GetX() == 0);   assert(b.GetX() == 42); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
