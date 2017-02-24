
 

 

 

 

 

([C++](Cpp.md)) [TemplateClassExample1](CppTemplateClassExample1.md)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 1: class holding a templated member
variable](CppTemplateClassExample1.md) is a [template
class](CppTemplateClass.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample1' (zip)](CppTemplateClassExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTemplateClassExample1/CppTemplateClassExample1.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) SOURCES += main.cpp`
  --------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample1/main.cpp
-----------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  template <class T> struct MyClass {   T x; };  int main() {   MyClass<int> m;   m.x = 10;   std::cout << m.x << std::endl; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

