
 

 

 

 

 

([C++](Cpp.md)) [TemplateClassExample2](CppTemplateClassExample2.md)
======================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[Template class example 2: class that must be specialized; compile-time
polymorphism](CppTemplateClassExample2.md) is a [template
class](CppTemplateClass.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppTemplateClassExample2' (zip)](CppTemplateClassExample2.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTemplateClassExample2/CppTemplateClassExample2.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) SOURCES += main.cpp`
  --------------------------------------------------------------

 

 

 

 

 

./CppTemplateClassExample2/main.cpp
-----------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  ///Template class template <class T> struct MyClass {   MyClass(const T& x); };  ///Template class specifialized for int, definition in declaration template <> struct MyClass<int> {   MyClass(const int& x)   {     std::cout << "int: " << x << '\n';   } };  ///Template class specifialized for int, definition seperate after declaration template <> struct MyClass<double> {   MyClass(const double& x); };  MyClass<double>::MyClass(const double& x) {   std::cout << "double: " << x << '\n'; }  int main() {   const MyClass<int> m(123);   const MyClass<double> n(3.14);    //Create a MyClass<bool> fails (correctly) with:   //undefined reference to 'MyClass<bool>::MyClass(bool const&)'   //const MyClass<bool> q(true); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

