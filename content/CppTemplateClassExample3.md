



 

 

 

 

 

([C++](Cpp.htm)) [TemplateClassExample3](CppTemplateClassExample3.htm)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 3: class that has an integer template
type](CppTemplateClassExample3.htm) is a [template
class](CppTemplateClass.htm) [example](CppExample.htm).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample3' (zip)](CppTemplateClassExample3.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppTemplateClassExample3/CppTemplateClassExample3.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) SOURCES += main.cpp`
  --------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample3/main.cpp
-----------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  template <int I> struct Person {   ///Every Person<I> can say hello   void SayHello() const; };   //Person<0> says hello in a happy way template <> void Person<0>::SayHello() const { std::cout << "Hello!\n"; }  //Person<1> says hello in a grumpy way template <> void Person<1>::SayHello() const { std::cout << "Moi\n"; }  int main() {   const Person<0> p;   p.SayHello();   const Person<1> q;   q.SayHello(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
