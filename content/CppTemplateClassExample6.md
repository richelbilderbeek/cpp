[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [TemplateClassExample6](CppTemplateClassExample6.htm)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 6: copy policy of template class type, two
specialized classes](CppTemplateClassExample6.htm) is a [template
class](CppTemplateClass.htm) [example](CppExample.htm).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample6' (zip)](CppTemplateClassExample6.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppTemplateClassExample6/CppTemplateClassExample6.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample6/main.cpp
-----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` enum class CopyPolicy { allow, forbid };  template <class T, CopyPolicy copy_policy = CopyPolicy::allow> struct MyClass;  template <class T> struct MyClass<T,CopyPolicy::forbid> {   MyClass(const T& x) : m_x(x) {}   MyClass<T,CopyPolicy::forbid>(const MyClass<T,CopyPolicy::forbid>&) = delete;   MyClass<T,CopyPolicy::forbid>& operator=(const MyClass<T,CopyPolicy::forbid>&) = delete;   private:   T m_x; };  template <class T> struct MyClass<T,CopyPolicy::allow> {   MyClass(const T& x) : m_x(x) {}   private:   T m_x; };  int main() {   const MyClass<int,CopyPolicy::allow> a(123);   const MyClass<int,CopyPolicy::forbid> b(123);    const MyClass<int> c(a);   //const MyClass<int,IntCopyPolicy::forbid> d(b); //Won't compile }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
