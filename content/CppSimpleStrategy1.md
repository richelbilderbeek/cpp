[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SimpleStrategy1](CppSimpleStrategy1.htm)
==========================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppSimpleStrategy1/CppSimpleStrategy1.pro
------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

./CppSimpleStrategy1/main.cpp
-----------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  struct Strategy {     virtual int DoIt(const int x) const = 0; };  struct TripleStrategy : public Strategy {     int DoIt(const int x) const { return x * 3; } };  struct QuadStrategy : public Strategy {     int DoIt(const int x) const { return x * 4; } };  struct MultiplyByStrategy : public Strategy {     MultiplyByStrategy(const int my_multiplier) : m_multiplier(my_multiplier) {}      int DoIt(const int x) const { return x * m_multiplier; }  private:     const int m_multiplier; };  int main() {     const Strategy * my_strategy = new TripleStrategy;     assert(my_strategy->DoIt(42) == 3 * 42);      my_strategy = new MultiplyByStrategy(314);     assert(my_strategy->DoIt(1) == 314 * 1);     assert(my_strategy->DoIt(2) == 314 * 2);     assert(my_strategy->DoIt(3) == 314 * 3);     assert(my_strategy->DoIt(4) == 314 * 4);     assert(my_strategy->DoIt(5) == 314 * 5);     assert(my_strategy->DoIt(6) == 314 * 6);      my_strategy = new TripleStrategy;     assert(my_strategy->DoIt(3) == 3 * 3);      my_strategy = new MultiplyByStrategy(42);     assert(my_strategy->DoIt(3) == 42 * 3);  }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
