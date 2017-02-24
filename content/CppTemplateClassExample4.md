
 

 

 

 

 

([C++](Cpp.md)) [TemplateClassExample4](CppTemplateClassExample4.md)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 4: class that has an enum class template
type](CppTemplateClassExample4.md) is a [template
class](CppTemplateClass.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample4' (zip)](CppTemplateClassExample4.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTemplateClassExample4/CppTemplateClassExample4.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) SOURCES += main.cpp`
  --------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample4/main.cpp
-----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  enum class PersonType { happy, grumpy };  template <PersonType T> struct Person {   ///Every Person<T> can say hello   void SayHello() const; };   //Person<PersonType::happy> says hello in a happy way template <> void Person<PersonType::happy>::SayHello() const { std::cout << "Hello!\n"; }  //Person<PersonType::grumpy> says hello in a grumpy way template <> void Person<PersonType::grumpy>::SayHello() const { std::cout << "Moi\n"; }  int main() {   const Person<PersonType::happy> p;   p.SayHello();   const Person<PersonType::grumpy> q;   q.SayHello(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

