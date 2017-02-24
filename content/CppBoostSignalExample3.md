



 

 

 

 

 

([C++](Cpp.htm)) [Boost signal example 3: emitting two arguments and reading a result](CppBoostSignalExample3.htm)
==================================================================================================================

 

This [Boost signal](CppBoostSignal.htm) example shows how to emit
[this](CppThis.htm).

 

-   [Download the Qt Creator project
    'CppBoostSignalExample3' (zip)](CppBoostSignalExample3.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppBoostSignalExample3.pro
-------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror  `
  ------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/function.hpp>  struct MyClass {   MyClass(const int x = 0) : m_x(x) {}   int Plus( const int x) const { return m_x + x; }   int Minus(const int x) const { return m_x - x; }   int m_x; };  int main() {   typedef boost::function<int(const MyClass*,int)> Function;   MyClass c;   Function f1 = &MyClass::Plus;   Function f2 = &MyClass::Minus;   assert( f1(&c,1000) ==  1000 );   assert( f2(&c,1000) == -1000 ); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
