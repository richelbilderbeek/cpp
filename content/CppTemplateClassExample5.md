[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [TemplateClassExample5](CppTemplateClassExample5.htm)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 5: copy policy of integer
class](CppTemplateClassExample5.htm) is a [template
class](CppTemplateClass.htm) [example](CppExample.htm).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample5' (zip)](CppTemplateClassExample5.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppTemplateClassExample5/CppTemplateClassExample5.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample5/main.cpp
-----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` enum class IntCopyPolicy { allow, forbid };  template <IntCopyPolicy copy_policy> struct Int;  template <> struct Int<IntCopyPolicy::forbid> {   Int(const int x) : m_x(x) {}   Int<IntCopyPolicy::forbid>(const Int<IntCopyPolicy::forbid>&) = delete;   Int<IntCopyPolicy::forbid>& operator=(const Int<IntCopyPolicy::forbid>&) = delete;   private:   int m_x; };  template <> struct Int<IntCopyPolicy::allow> {   Int(const int x) : m_x(x) {}   private:   int m_x; };  int main() {   const Int<IntCopyPolicy::allow> a(123);   const Int<IntCopyPolicy::forbid> b(123);    const Int<IntCopyPolicy::allow> c(a);   //const Int<IntCopyPolicy::forbid> d(b); //Won't compile }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
