[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [FinalExample1](CppFinalExample1.htm)
======================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppFinalExample1/CppFinalExample1.pro
--------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppFinalExample1/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct Base {   virtual ~Base() noexcept {}   virtual void A() const = 0;   virtual void B() const = 0; };  struct Derived : public Base {   void A() const override final { std::cout << "Derived::A\n"; } //A is final   virtual void B() const override { std::cout << "Derived::B\n"; } };  struct DerivedAgain : public Derived {   //void MakeSound() const { std::cout << "DerivedAgain::A\n"; } //will not compile: Derived::A is final   void B() const override { std::cout << "DerivedAgain::B\n"; } };  int main() {   Derived d;   d.A();   d.B();    DerivedAgain da;   da.A();   da.B(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
