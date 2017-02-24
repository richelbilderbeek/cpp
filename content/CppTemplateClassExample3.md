
 

 

 

 

 

([C++](Cpp.md)) [TemplateClassExample3](CppTemplateClassExample3.md)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 3: class that has an integer template
type](CppTemplateClassExample3.md) is a [template
class](CppTemplateClass.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample3' (zip)](CppTemplateClassExample3.zip)

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

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTemplateClassExample3/CppTemplateClassExample3.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) SOURCES += main.cpp`
  --------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample3/main.cpp
-----------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  template <int I> struct Person {   ///Every Person<I> can say hello   void SayHello() const; };   //Person<0> says hello in a happy way template <> void Person<0>::SayHello() const { std::cout << "Hello!\n"; }  //Person<1> says hello in a grumpy way template <> void Person<1>::SayHello() const { std::cout << "Moi\n"; }  int main() {   const Person<0> p;   p.SayHello();   const Person<1> q;   q.SayHello(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

