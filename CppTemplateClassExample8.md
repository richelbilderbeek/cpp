[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [TemplateClassExample8](CppTemplateClassExample8.htm)
======================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppTemplateClassExample8/CppTemplateClassExample8.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample8/main.cpp
-----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //FAILS TO COMPILE  /*  Problem: the two get member functions are overloads  struct MyClass {   double Get() const noexcept;   int Get() const noexcept;    private:   double m_x; };  For template functions, this works:  template <class T> T Get() noexcept; template <> double Get() noexcept { return 12.34; } template <> int Get() noexcept { return 42; } */  #include <cassert>   struct MyClass {   template <class T> T Get() const noexcept;   template <> double Get() const noexcept { return 12.34; } //Does not compile   template <> int Get() const noexcept { return 42; } //Does not compile     private:   double m_x; };   int main() {   MyClass c;   const auto x = c.Get<int>();   const auto y = c.Get<double>();   assert(x == 42);   assert(y == 12.34); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
