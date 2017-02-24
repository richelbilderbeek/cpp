
 

 

 

 

 

([C++](Cpp.md)) [FinalExample1](CppFinalExample1.md)
======================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppFinalExample1/CppFinalExample1.pro
--------------------------------------------------------------------------------

 

  ---------------------------------------------------------------
  ` include(../../ConsoleApplication.pri)  SOURCES += main.cpp`
  ---------------------------------------------------------------

 

 

 

 

 

./CppFinalExample1/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct Base {   virtual ~Base() noexcept {}   virtual void A() const = 0;   virtual void B() const = 0; };  struct Derived : public Base {   void A() const override final { std::cout << "Derived::A\n"; } //A is final   virtual void B() const override { std::cout << "Derived::B\n"; } };  struct DerivedAgain : public Derived {   //void MakeSound() const { std::cout << "DerivedAgain::A\n"; } //will not compile: Derived::A is final   void B() const override { std::cout << "DerivedAgain::B\n"; } };  int main() {   Derived d;   d.A();   d.B();    DerivedAgain da;   da.A();   da.B(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

